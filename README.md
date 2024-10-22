# Flutter Calculator App (`flutter_calc`)

## Overview

`flutter_calc` is a simple yet powerful calculator application built with Flutter. It supports basic arithmetic operations and includes user-friendly UI components. This project showcases essential Flutter features like button handling, input management, state management, and dynamic screen layouts for various screen sizes.

## Screenshot

![Calculator Screenshot](https://github.com/NipunaMadula/Flutter-Calc/blob/8add84be24e92904d0b45fe64af38de880b652dd/Screenshot1.png)


## Features

- **Basic Operations**: Perform addition, subtraction, multiplication, and division.
- **Clear and Delete Functionality**: Reset or delete inputs with a single tap.
- **Decimal Support**: Handle floating-point operations with a dot (.) button.
- **Responsive UI**: Adapts to different screen sizes, making it suitable for all device types.
- **Interactive Buttons**: Designed for a smooth user experience with clear button functionality.
- **Customizable Appearance**: Button colors and themes change based on the button type (numbers, operations, etc.).

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/NipunaMadula/flutter_calc.git
   cd flutter_calc
   ```

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the App**:
   ```bash
   flutter run
   ```

## Usage

The calculator can be used to perform basic arithmetic operations. Here's a quick guide to the functionality:

- **Number Input**: Tap the numeric buttons to enter numbers.
- **Arithmetic Operators**: Tap `+`, `-`, `×`, or `÷` to perform operations.
- **Clear**: Tap the `C` button to reset the calculator.
- **Delete**: Use the `DEL` button to remove the last entered digit.
- **Equals**: Tap `=` to display the result.

## File Structure

```
lib/
├── calculator_screen.dart        # Main calculator UI and logic
├── button_values.dart            # Defines button labels and values
└── main.dart                     # Main entry point of the app
```

## Future Enhancements

- **Scientific Operations**: Support for advanced operations like square root, exponents, etc.
- **History Feature**: Add a feature to view past calculations.
- **Dark Mode**: Implement a dark mode toggle.
- **Animations**: Introduce smoother transitions and animations for button taps.

## Contributing

Contributions are welcome! Feel free to fork this repository, make changes, and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
