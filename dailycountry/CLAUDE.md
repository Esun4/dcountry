# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Daily Country is a native iOS game built with SwiftUI. Each day, players guess a country based on progressively revealed clues (text and images). The same country is shown to all players on a given day via a deterministic date-based hash.

## Build & Run

```bash
# Build
xcodebuild build -project dailycountry.xcodeproj -scheme dailycountry

# Run tests
xcodebuild test -project dailycountry.xcodeproj -scheme dailycountry
```

Requires Xcode 17+ with iOS 26.2 SDK. No external package dependencies.

## Architecture (MVVM)

- **`DailyCountryApp.swift`** — App entry point, creates ContentView with GameViewModel
- **`Models.swift`** — Data types: `Country`, `Clue`, `DailyGameState`, `GameStatus`, `ClueType`
- **`GameViewModel.swift`** — Core game logic: daily country selection, guess validation, state persistence, share text generation. Uses `@Published` properties to drive UI updates
- **`ContentView.swift`** — All SwiftUI views: `ContentView`, `ClueCardView`, `GuessHistoryView`, `CountryPickerView`, `ResultSheetView`
- **`Countries.swift`** — Hardcoded dataset of 20 countries, each with 5 clues (mix of text and image URLs from Wikimedia Commons)
- **`Storage.swift`** — Thin wrapper around UserDefaults for JSON-encoded game state persistence (keyed by date)
- **`Utils.swift`** — Date formatting, deterministic hash function, daily country index calculation

## Key Design Decisions

- **Daily determinism**: `dailyCountryIndex()` hashes the date string (YYYY-MM-DD) to select a country index, ensuring all users get the same country each day
- **Game state persistence**: Saved per-day to UserDefaults as JSON via Codable. Key format: `dailyCountryState_YYYY-MM-DD`
- **No external dependencies**: Pure SwiftUI + Foundation + UIKit (clipboard only)
- **Image loading**: Remote images from Wikimedia Commons loaded via AsyncImage
- **Game flow**: Start with 1 clue revealed → wrong guess reveals next clue → max 5 guesses → win or lose
