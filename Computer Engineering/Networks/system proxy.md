To configure HTTP and HTTPS proxy in Linux, you can follow these steps:

1. Open your terminal and execute the following command to open the environment variables file:
```
$ sudo nano /etc/environment
```

2. In the editor, add the following lines at the end of the file, replacing `proxy_host` and `proxy_port` with your proxy server's hostname and port number:
```
http_proxy="http://proxy_host:proxy_port"
https_proxy="https://proxy_host:proxy_port"
```

3. If your proxy server requires authentication, add the following lines with your username and password:
```
http_proxy="http://username:password@proxy_host:proxy_port"
https_proxy="https://username:password@proxy_host:proxy_port"
```

4. Save and close the file.

5. To apply the changes, execute the following command to reload the environment variables:
```
$ source /etc/environment
```

Alternatively, you can set the proxy configuration for specific applications by editing their configuration files or setting environment variables for them. For example, to configure the proxy for the `curl` command, you can set the `http_proxy` and `https_proxy` environment variables before executing it, like this:
```
export http_proxy="http://proxy_host:proxy_port"
export https_proxy="https://proxy_host:proxy_port"


```




```
```
$ curl http://example.com
```