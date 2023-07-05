# SplitNavigationSample

When using `NavigationSplitView` and `NavigationLink.init(value:label:)` paired with `.navigationDestination(for:destination:)` the value presented by the link doesn't update `@State` properties in a detail view.

However using a `NavigationView` and `NavigationLink.init(destination:label:)` does update the value in the detail view, even when the property is marked with `@State`.

## Models

There are three models, `Cat`, `Bird`, and `Dog`, each demonstrates different behavior.

### Cat

`Cat` is a struct with a detail view with `@State var cat: Cat`. The `cat` value is set on the first selection, but doesn't update when new cats are selected.

### Dog

`Dog` is a class with a detail view with `@ObservedObject var dog: Dog`. The `dog` value updates when selecting other dogs.

### Bird

`Bird` is a struct with a detail view with `var bird: Bird`. The `bird` updates when selecting other birds, but because it's a static value the model can't be edited in the detail view.
