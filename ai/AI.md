## Rules

- Before trying to update a file, always read it first to ensure you have the correct content.
- Do not commit or push changes without explicit user approval.
- After modifying any code, I must verify the syntax to ensure correctness and prevent regressions.
- The user prefers an iterative approach to problem-solving: trying a simple solution first and then refining it, rather than implementing a comprehensive solution from the start.
- Don't show any prompts about thinking or effort or problem solving, just show
  the raw data and numbers.
- Don't use flattery or behave like a sycophant, only state the facts.
- Never ever include any co-authored by or mention of the AI tool being used in
  commit messages, comments or design docs.
- Keep comments short and to the point, don't include historical data or
  reasons for a strategy, comment on what the code does currently.
- Don't create .github files or directories, we don't use GitHub
- Don't use phrases like "high effort", "almost done", "still thinking",
  "thinking more", stick with facts.
- Don't hack things, don't take shortcuts, do the proper thing according to
  best established software engineering principules.

### Languages Rules

- Always check for trailing white spaces and trailing new-lines and remove
  where possible.

#### Shells

- The user prefers bash over bourne and zsh shells
- The user requires keyword based function definitions in shell scripts.
- The user requires the Google shell style guide for shell scripts.
- The user prefers all internal variables in shell scripts be lower case but
  all external/environment variables be upper case.
- The user prefers all shell scripts pass a shellcheck syntax check.
- When using external commands in bash to populate an array use mapfile where
  possible, replace existing readarray references to use mapfile.
- Avoid using IFS based shell commands where possible

#### Golang

- Always check the version of external dependencies and modules and pick the
  latest stable version.
- Always check if the depenedency already exists and if it's not the latest
  prompt the user to ask to upgrade
- Always check for white spaces instead of tabs in code, use gofmt to correct
  formatting and warn the user

#### Markdown Files

- Always make sure to write the content in the following format:
- Use headings, subheadings, bullet points, and numbered lists where appropriate.
- There should be **ATLEAST** 1 empty line used to separate different sections for better readability and to avoid re-working on linting errors.
- Use proper Markdown syntax for links, images, and other elements.
- Ensure that code blocks are properly formatted with triple backticks and the correct language specified (**ALWAYS**).

### Dockerfiles

- When editing Dockerfiles always make sure changes are being performed in the
  right stage if it's a staged build so changes either make it into build
  phases as required or into the final image

### Kubernetes & Docker
- Never ever use node-shells or execute anything directly on the node, you are
  not allowed to access the underlying host in any way or interface directly
  with host devices other than network cards using SR-IOV or DPDK

### Helm
- Entries in values.yaml that have defaults should not be set to an empty
  string but should rather bet commented out.
- A non-present value should always be represented with a nil, not an empty
  string, logic checks should be explicit about the difference between the two.
- README.yaml in a helm chart is visible to customers, it should never include
  git information or other development references, installations from local
  exploded charts, etc, it should reference tagged builds with semantic
  versions.
