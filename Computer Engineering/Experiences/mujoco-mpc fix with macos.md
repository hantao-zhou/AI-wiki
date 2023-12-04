---
created: 2023-11-22T10:40:25 (UTC +01:00)
tags: []
source: https://github.com/google-deepmind/mujoco_mpc/pull/215
author: hartikainen
---
---
created: 2023-11-22T10:40:49 (UTC +01:00)
tags: []
source: https://github.com/google-deepmind/mujoco_mpc/pull/215
author: hartikainen
---

# Fix protobuf includes by hartikainen · Pull Request #215 · google-deepmind/mujoco_mpc

> ## Excerpt
> We don’t support that file type.

---
<table class="d-block user-select-contain" data-paste-markdown-skip=""><tbody class="d-block"><tr class="d-block"><td class="d-block comment-body markdown-body  js-comment-body"><p dir="auto">Thanks for this! I was able to build with these changes, combined with <a class="user-mention notranslate" data-hovercard-type="user" data-hovercard-url="/users/hongmindavidkim/hovercard" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="https://github.com/hongmindavidkim">@hongmindavidkim</a>'s comment: <a class="issue-link js-issue-link" data-error-text="Failed to load title" data-id="1978528360" data-permission-text="Title is private" data-url="https://github.com/google-deepmind/mujoco_mpc/issues/214" data-hovercard-type="issue" data-hovercard-url="/google-deepmind/mujoco_mpc/issues/214/hovercard?comment_id=1797847399&amp;comment_type=issue_comment" href="https://github.com/google-deepmind/mujoco_mpc/issues/214#issuecomment-1797847399">#214 (comment)</a></p><p dir="auto">Here's the full diff I used:</p><div class="highlight highlight-source-diff notranslate position-relative overflow-auto" dir="auto"><pre class="notranslate"><span class="pl-c1">diff --git a/mjpc/CMakeLists.txt b/mjpc/CMakeLists.txt</span>
index e8e4dd3..f8d1206 100644
<span class="pl-md">--- a/mjpc/CMakeLists.txt</span>
<span class="pl-mi1">+++ b/mjpc/CMakeLists.txt</span>
<span class="pl-mdr">@@ -24,8 +24,8 @@</span> target_link_libraries(
 )
 target_include_directories(threadpool PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/..)

<span class="pl-md"><span class="pl-md">-</span>set(_PROTOBUF_LIBPROTOBUF libprotobuf)</span>
<span class="pl-md"><span class="pl-md">-</span>set(_PROTOBUF_PROTOC $&lt;TARGET_FILE:protoc&gt;)</span>
<span class="pl-mi1"><span class="pl-mi1">+</span>find_package(Protobuf REQUIRED)</span>
<span class="pl-mi1"><span class="pl-mi1">+</span>include_directories(${Protobuf_INCLUDE_DIRS})</span>

 get_filename_component(agent_state_proto "./agent_state.proto" ABSOLUTE)
 get_filename_component(agent_state_proto_path "${agent_state_proto}" PATH)
<span class="pl-mdr">@@ -36,11 +36,12 @@</span> add_custom_command(
   OUTPUT
   "${agent_state_proto_srcs}"
   "${agent_state_proto_hdrs}"
<span class="pl-md"><span class="pl-md">-</span>  COMMAND ${_PROTOBUF_PROTOC}</span>
<span class="pl-mi1"><span class="pl-mi1">+</span>  COMMAND ${Protobuf_PROTOC_EXECUTABLE}</span>
   ARGS
   --cpp_out "${CMAKE_CURRENT_BINARY_DIR}"
   -I "${agent_state_proto_path}"
   "${agent_state_proto}"
<span class="pl-mi1"><span class="pl-mi1">+</span>  --experimental_allow_proto3_optional</span>
   DEPENDS
   "${agent_state_proto}"
 )
<span class="pl-mdr">@@ -52,7 +53,7 @@</span> add_library(agent_state_proto_lib STATIC

 target_link_libraries(
   agent_state_proto_lib
<span class="pl-md"><span class="pl-md">-</span>  ${_PROTOBUF_LIBPROTOBUF}</span>
<span class="pl-mi1"><span class="pl-mi1">+</span>  ${Protobuf_LIBRARIES}</span>
 )

 add_library(
<span class="pl-mdr">@@ -169,7 +170,7 @@</span> target_link_libraries(
   lodepng
   mujoco::mujoco
   mujoco::platform_ui_adapter
<span class="pl-md"><span class="pl-md">-</span>  ${_PROTOBUF_LIBPROTOBUF}</span>
<span class="pl-mi1"><span class="pl-mi1">+</span>  ${Protobuf_LIBRARIES}</span>
   threadpool
   Threads::Threads
 )
<span class="pl-mdr">@@ -192,7 +193,7 @@</span> target_link_libraries(
   agent_state_proto_lib
   libmjpc
   mujoco::mujoco
<span class="pl-md"><span class="pl-md">-</span>  ${_PROTOBUF_LIBPROTOBUF}</span>
<span class="pl-mi1"><span class="pl-mi1">+</span>  ${Protobuf_LIBRARIES}</span>
   threadpool
   Threads::Threads
 )
<span class="pl-c1">diff --git a/mjpc/agent.cc b/mjpc/agent.cc</span>
index 7b6cc5b..898ea5f 100644
<span class="pl-md">--- a/mjpc/agent.cc</span>
<span class="pl-mi1">+++ b/mjpc/agent.cc</span>
<span class="pl-mdr">@@ -250,12 +250,12 @@</span> agent_state::State Agent::GetAgentState(mjModel* model, mjData* data) {
     if (absl::StartsWith(numeric_name, "residual_select_")) {
       std::string_view name =
           absl::StripPrefix(numeric_name, "residual_select_");
<span class="pl-md"><span class="pl-md">-</span>      (*task_parameters)[name].set_selection(mjpc::ResidualSelection(</span>
<span class="pl-mi1"><span class="pl-mi1">+</span>      (*task_parameters)[std::string(name)].set_selection(mjpc::ResidualSelection(</span>
           agent_model, name, ActiveTask()-&gt;parameters[shift]));
       shift++;
     } else if (absl::StartsWith(numeric_name, "residual_")) {
       std::string_view name = absl::StripPrefix(numeric_name, "residual_");
<span class="pl-md"><span class="pl-md">-</span>      (*task_parameters)[name].set_numeric(ActiveTask()-&gt;parameters[shift]);</span>
<span class="pl-mi1"><span class="pl-mi1">+</span>      (*task_parameters)[std::string(name)].set_numeric(ActiveTask()-&gt;parameters[shift]);</span>
       shift++;
     }
   }</pre><div class="zeroclipboard-container position-absolute right-0 top-0"><clipboard-copy aria-label="Copy" class="ClipboardButton btn js-clipboard-copy m-2 p-0 tooltipped-no-delay" data-copy-feedback="Copied!" data-tooltip-direction="w" value="diff --git a/mjpc/CMakeLists.txt b/mjpc/CMakeLists.txt
index e8e4dd3..f8d1206 100644
--- a/mjpc/CMakeLists.txt
+++ b/mjpc/CMakeLists.txt
@@ -24,8 +24,8 @@ target_link_libraries(
 )
 target_include_directories(threadpool PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/..)

-set(_PROTOBUF_LIBPROTOBUF libprotobuf)
-set(_PROTOBUF_PROTOC $<TARGET_FILE:protoc>)
+find_package(Protobuf REQUIRED)
+include_directories(${Protobuf_INCLUDE_DIRS})

 get_filename_component(agent_state_proto &quot;./agent_state.proto&quot; ABSOLUTE)
 get_filename_component(agent_state_proto_path &quot;${agent_state_proto}&quot; PATH)
@@ -36,11 +36,12 @@ add_custom_command(
   OUTPUT
   &quot;${agent_state_proto_srcs}&quot;
   &quot;${agent_state_proto_hdrs}&quot;
-  COMMAND ${_PROTOBUF_PROTOC}
+  COMMAND ${Protobuf_PROTOC_EXECUTABLE}
   ARGS
   --cpp_out &quot;${CMAKE_CURRENT_BINARY_DIR}&quot;
   -I &quot;${agent_state_proto_path}&quot;
   &quot;${agent_state_proto}&quot;
+  --experimental_allow_proto3_optional
   DEPENDS
   &quot;${agent_state_proto}&quot;
 )
@@ -52,7 +53,7 @@ add_library(agent_state_proto_lib STATIC

 target_link_libraries(
   agent_state_proto_lib
-  ${_PROTOBUF_LIBPROTOBUF}
+  ${Protobuf_LIBRARIES}
 )

 add_library(
@@ -169,7 +170,7 @@ target_link_libraries(
   lodepng
   mujoco::mujoco
   mujoco::platform_ui_adapter
-  ${_PROTOBUF_LIBPROTOBUF}
+  ${Protobuf_LIBRARIES}
   threadpool
   Threads::Threads
 )
@@ -192,7 +193,7 @@ target_link_libraries(
   agent_state_proto_lib
   libmjpc
   mujoco::mujoco
-  ${_PROTOBUF_LIBPROTOBUF}
+  ${Protobuf_LIBRARIES}
   threadpool
   Threads::Threads
 )
diff --git a/mjpc/agent.cc b/mjpc/agent.cc
index 7b6cc5b..898ea5f 100644
--- a/mjpc/agent.cc
+++ b/mjpc/agent.cc
@@ -250,12 +250,12 @@ agent_state::State Agent::GetAgentState(mjModel* model, mjData* data) {
     if (absl::StartsWith(numeric_name, &quot;residual_select_&quot;)) {
       std::string_view name =
           absl::StripPrefix(numeric_name, &quot;residual_select_&quot;);
-      (*task_parameters)[name].set_selection(mjpc::ResidualSelection(
+      (*task_parameters)[std::string(name)].set_selection(mjpc::ResidualSelection(
           agent_model, name, ActiveTask()->parameters[shift]));
       shift++;
     } else if (absl::StartsWith(numeric_name, &quot;residual_&quot;)) {
       std::string_view name = absl::StripPrefix(numeric_name, &quot;residual_&quot;);
-      (*task_parameters)[name].set_numeric(ActiveTask()->parameters[shift]);
+      (*task_parameters)[std::string(name)].set_numeric(ActiveTask()->parameters[shift]);
       shift++;
     }
   }" tabindex="0" role="button" style="display: none;"><svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon m-2"><path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path></svg><svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none m-2"><path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path></svg></clipboard-copy></div></div></td></tr></tbody></table>

  -   👍
-   👎
-   😄
-   🎉
-   😕
-   ❤️
-   🚀
-   👀

  

👍 4 hartikainen, leo-liuzy, 4078730, and News0412 reacted with thumbs up emoji ❤️ 1 leo-liuzy reacted with heart emoji

All reactions

-   👍 4 reactions
-   ❤️ 1 reaction

Sorry, something went wrong.
