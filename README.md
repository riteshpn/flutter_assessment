# flutter_assessment

Onboarding Screen:

    What it does: Introduces the app to the user with two screens, each containing an image, title, and description. The last screen transitions to the Sign In page when the "Get Started" button is pressed.
    Enhancements:
        Add an animation (e.g., slide or fade-in) when transitioning between onboarding pages.
        Use a DotsIndicator widget to show the current page in the onboarding flow.

Sign In Screen:

    What it does: Provides a simple UI for user authentication with a "Sign In" button that navigates to the Home Screen.
    Enhancements:
        Add input fields for email and password with validation.
        Use a custom-designed "Sign In" button to enhance the UI.

Home Screen:

    What it does: Displays a list of products in a horizontal layout, a "New Arrival" section, and includes a slidable drawer for navigation.
    Enhancements:
        Use a Drawer with Categories that partially overlaps the Home Screen and can be fully revealed with a swipe.
        Enhance the product cards with interactive effects like a shadow or a zoom-in animation on tap.

Product Detail Screen:

    What it does: Shows product details (image, price, size, description) with an "Add to Cart" button.
    Enhancements:
        Use a carousel widget for displaying multiple product images.
        Add a "quantity selector" to allow users to specify the number of items they want to add to the cart.

Cart Screen:

    What it does: Lists products added to the cart, calculates total price and discounts, and displays the final amount.
    Enhancements:
        Add a remove item button for each product in the cart.
        Show a summary breakdown of the discount, tax, and final price.

UI/UX Enhancements Across the App:

    Consistent Theme: Use a ThemeData object to apply consistent colors, fonts, and button styles across all screens.
    Responsive Design: Make the layout adaptive for different screen sizes, especially for horizontal product lists and drawers.
    Navigation Feedback: Use snackbars or toast messages to confirm actions like "Added to Cart."

MVVM Architecture Benefits in this App:

    Separation of Concerns: Each screen has its Model, View, and ViewModel, making it easier to manage, debug, and extend.
    Reusability: Widgets and logic are modular, allowing for quick reuse (e.g., product card widgets, navigation drawer).
    Testability: Business logic is decoupled from UI, enabling focused unit tests for ViewModels.

Final Additions:

    Include a README file to explain the project structure, how MVVM is used, and steps to run the app.
    Use comments and documentation for better code readability.
    Add placeholder assets (e.g., product images) and mock data for static content.
