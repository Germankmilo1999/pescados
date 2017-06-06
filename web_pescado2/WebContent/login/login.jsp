<form action="j_security_check" method="post">

			<fieldset>

				<p><input type="text" name="j_username" required value="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' "></p> <!-- JS because of IE support; better: placeholder="Username" -->

				<p><input type="password"  name="j_password" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p> <!-- JS because of IE support; better: placeholder="Password" -->

				<p><a href="#">Forgot Password?</a></p>

				<p><input type="submit" value="Ingresar"></p>

			</fieldset>

		</form>