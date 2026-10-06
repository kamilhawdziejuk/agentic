---
name: design-principles
description: >-
  Core Design Principles (SOLID, DRY, KISS, DAMP, YAGNI, Composition Over Inheritance, Fail Fast, Law of Demeter) that should always be applied in software development.
---

# Core Design Principles

## SOLID Principles

The five foundational principles of object-oriented design:

### S — Single Responsibility Principle (SRP)
- A class/module should have **one and only one reason to change**.
- Each component should do one thing well.
- If a class has multiple responsibilities, split it into smaller, focused classes.

### O — Open/Closed Principle (OCP)
- Software entities should be **open for extension, closed for modification**.
- Add new functionality by extending existing code, not modifying it.
- Use abstractions (interfaces, abstract classes) to enable extensibility.

### L — Liskov Substitution Principle (LSP)
- Subtypes must be **substitutable for their base types** without altering correctness.
- Derived classes must honor the contracts of their base classes.
- Avoid overriding methods in ways that break expected behavior.

### I — Interface Segregation Principle (ISP)
- Clients should not be forced to depend on **interfaces they don't use**.
- Prefer many small, specific interfaces over one large, general-purpose interface.
- Split "fat" interfaces into role-specific ones.

### D — Dependency Inversion Principle (DIP)
- High-level modules should not depend on low-level modules; **both should depend on abstractions**.
- Abstractions should not depend on details; details should depend on abstractions.
- Use dependency injection to decouple components.

---

## DRY — Don't Repeat Yourself

- **Every piece of knowledge should have a single, unambiguous, authoritative representation.**
- Eliminate duplication of logic, configuration, and data.
- Extract repeated code into reusable functions, classes, or modules.
- Centralize constants, configuration, and shared logic.
- When you find yourself copying code, create an abstraction instead.

---

## KISS — Keep It Simple, Stupid

- **Simplicity is the ultimate sophistication.**
- Prefer simple, straightforward solutions over clever, complex ones.
- Avoid over-engineering and unnecessary abstractions.
- Write code that is easy to read, understand, and maintain.
- If a solution feels overly complicated, step back and simplify.
- The best code is often the code you didn't write.

---

## DAMP — Descriptive And Meaningful Phrases

Especially relevant for test code:

- **Prioritize readability and clarity over extreme DRY-ness.**
- Use descriptive, self-documenting names for tests, variables, and methods.
- Some repetition in tests is acceptable if it improves understanding.
- Each test should tell a clear story: Arrange → Act → Assert.
- Favor explicit setup over hidden abstractions that obscure intent.
- Test names should describe the scenario and expected outcome.

---

## YAGNI — You Aren't Gonna Need It

- **Don't implement functionality until it is actually needed.**
- Avoid speculative generalization and premature optimization.
- Build only what is required for current requirements.
- Remove unused code, parameters, and features.
- Future-proofing often creates unnecessary complexity.

---

## Composition Over Inheritance

- **Favor object composition over class inheritance.**
- Inheritance creates tight coupling; composition provides flexibility.
- Use interfaces and delegation to achieve polymorphism.
- Compose behaviors from smaller, reusable components.

---

## Separation of Concerns

- **Divide a program into distinct sections, each addressing a separate concern.**
- Keep business logic separate from presentation and data access.
- Use layered architecture (presentation, business, data).
- Each module/component should have a well-defined responsibility.

---

## Fail Fast

- **Detect and report errors as soon as possible.**
- Validate inputs early and throw meaningful exceptions.
- Don't silently swallow errors or continue with invalid state.
- Use guard clauses to handle edge cases at the start of methods.

---

## Law of Demeter (Principle of Least Knowledge)

- **A module should not know about the internal details of objects it manipulates.**
- Only talk to immediate friends, not strangers.
- Avoid chaining method calls like `a.getB().getC().doSomething()`.
- Reduces coupling and improves maintainability.
