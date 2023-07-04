To modify the password for a user in Linux, you can use the `passwd` command. Here are the steps:

1. Open a terminal window.
2. Log in as the root user or switch to the root user by running the following command and entering the root password:

   ````
   sudo su
   ```

3. Type the following command to change the password for a user:

   ````
   passwd username
   ```

   Replace `username` with the name of the user for whom you want to change the password.

4. You will be prompted to enter the new password twice. Enter the new password and press Enter.

   Note: The password will not be displayed on the screen as you type it.

5. If the new password meets the system's password complexity requirements, the password will be changed successfully. If the new password is not strong enough, you will be prompted to enter a stronger password.

6. Once the password is changed, you can exit the root shell by running the `exit` command.

That's it! The user's password should now be changed to the new one you provided.