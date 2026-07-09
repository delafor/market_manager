# Figma ⇄ golden test mapping

Figma file: https://www.figma.com/design/lm5vVFAAagGhGIODGHTvsB/Online-Groceries-App-UI--Community-

| Route / page | Figma node | Reference image | Golden test | Status |
|---|---|---|---|---|
| `welcome` → `WelcomePage` | Onboarding (`1:282`) | `figma_reference/onboarding.png` | `welcome_page_golden_test.dart` | implemented against today's placeholder UI |
| `home` → `HomePage` | Home Screen (`1:45`) | `figma_reference/home.png` | `home_page_golden_test.dart` | implemented against today's placeholder UI |
| `login` → `LoginPage` | Sign in (`1:297`) | `figma_reference/sign_in.png` | `login_page_golden_test.dart` | implemented against today's placeholder UI |
| `register` → `RegisterPage` | Sign up (`1:584`) | `figma_reference/sign_up.png` | `register_page_golden_test.dart` | implemented against today's placeholder UI |
| *(no route yet)* | Splash (`1:8`) | `figma_reference/splash.png` | `splash_screen_golden_test.dart` | stub — `skip: true` |
| *(no route yet)* | Verification (`1:416`) | `figma_reference/verification.png` | `verification_golden_test.dart` | stub — `skip: true` |
| *(no route yet)* | Select Location (`1:460`) | `figma_reference/select_location.png` | `select_location_golden_test.dart` | stub — `skip: true` |

"Implemented against today's placeholder UI" means the golden test runs
and passes against the current state of the page (mostly `Placeholder()`),
not the final Figma design yet. See `README.md` for the re-baseline
workflow once a page's real UI is built.
