# Golden tests

Golden tests render each page at a fixed 414×896 viewport (matching the
Figma frames in this project) and compare the result pixel-for-pixel
against a PNG saved in `goldens/`. See `MAPPING.md` for which Figma screen
each test targets, and `figma_reference/` for the target design.

Note: `home_page`'s Figma frame is taller (414×1553, scrollable) than the
fixed 414×896 viewport used here — the golden only captures what's visible
on a real device screen, not the full scrollable content.

## Run

    fvm flutter test test/golden

## After implementing a page's real UI

1. Build the page to match `figma_reference/<screen>.png`.
2. Recapture the baseline for that screen:

       fvm flutter test --update-goldens test/golden/<file>_golden_test.dart

3. Open the newly generated PNG in `goldens/` and compare it against
   `figma_reference/<screen>.png` by eye before committing — golden tests
   only catch *regressions* against the saved PNG, they do not compare
   against Figma automatically.
4. Commit the updated `goldens/*.png` together with the UI change.

## Unlocking a stub test

`splash_screen_golden_test.dart`, `verification_golden_test.dart` and
`select_location_golden_test.dart` are `skip: true` because there is no
Flutter page for those screens yet. Once one exists:

1. Replace the `const Placeholder()` in the corresponding test with the
   real widget.
2. Remove `skip: true`.
3. Follow the "After implementing a page's real UI" steps above to capture
   its first baseline.
