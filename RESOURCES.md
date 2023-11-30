# Resources That Helped Completed This Project

22-November-2023:

- [Link to YouTube video](https://www.youtube.com/watch?v=t0vT8312sSU&t=5s)
  This project help me figure out how to add the child & state to the body
- [Link to YouTube Video](https://www.youtube.com/watch?v=5nQQv_nbFqY)
  This project explains the GoRouter in a great deal

````dart
class Redirect extends StatelessWidget {
  final SupabaseClient supabaseClient;

  const Redirect({super.key, required this.supabaseClient});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AuthState>(
      stream: supabaseClient.auth.onAuthStateChange,
      builder: (context, AsyncSnapshot<AuthState> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.data != null) {
            devtools.log('snapshot.data: ${snapshot.data}');
            // User session exists, navigate to home page
            return const HomePage();
          } else {
            // User session does not exist, navigate to sign-in page
            return const SignInPage();
          }
        } else {
          // Show loading indicator while waiting for auth state
          return const WelcomePage();
        }
      },
    );
    ```
````
