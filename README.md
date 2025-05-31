# Billionaire App

A simple Flutter app to simulate adding money to your bank balance. The app demonstrates state management, persistent storage using `shared_preferences`, and custom widgets.

## Features

- Add money to your bank balance with a button
- Persistent balance storage using `shared_preferences`
- Clean, dark-themed UI

## Screenshots

<img src="https://media.discordapp.net/attachments/945123026410831952/1378341138515099719/Screenshot_1748692505.png?ex=683c3fb7&is=683aee37&hm=086291d4349324248caed1ecf564fcd76601205fd5f6a27679d5fe203a5acac7&=&format=webp&quality=lossless&width=385&height=856" width="400"/>

<img src="https://cdn.discordapp.com/attachments/945123026410831952/1378341138884464760/Screenshot_1748692509.png?ex=683c3fb7&is=683aee37&hm=1588746547bd2ab6f90337e3eb06eb80a896de7767f45d0313d419044608d775&" width="400"/>

## Project Structure

```
lib/
├── balance.dart        # Widget to display the bank balance
├── main.dart           # Main app entry point
└── moneybutton.dart    # Widget for the "Add Money" button
```

## How It Works

- The main screen shows your current bank balance and an "Add Money" button.
- Pressing the button increases your balance by \$500 and saves it using `shared_preferences`.
- The balance persists even after closing and reopening the app.
