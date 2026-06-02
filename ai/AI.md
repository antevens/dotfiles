# mapfile vs. readarray
# Google syntax style guide
## Rules

- Before trying to update a file, always read it first to ensure you have the correct content.

### Languages Rules

#### Shells

- The user prefers bash over bourne and zsh shells
- The user requires keyword based function definitions in shell scripts.
- The user requires the google shell style guide for shell scripts.
- The user prefers all internal variables in shell scripts be lower case but
  all external/environment variables be upper case.
- The user prefers all shell scripts pass a shellcheck syntax check.
- When using external commands in bash to populate an array use mapfile where
  possible, replace existing readarray references to use mapfile.
- Avoid using IFS based shell commands where possible

#### Golang

#### Markdown Files

- Always make sure to write the content in the following format:
- Use headings, subheadings, bullet points, and numbered lists where appropriate.
- There should be **ATLEAST** 1 empty line used to separate different sections for better readability and to avoid re-working on linting errors.
- Use proper Markdown syntax for links, images, and other elements.
- Ensure that code blocks are properly formatted with triple backticks and the correct language specified (**ALWAYS**).

## Gemini Added Memories

- Do not commit or push changes without explicit user approval.
- After modifying any code, I must verify the syntax to ensure correctness and prevent regressions.
- The user prefers an iterative approach to problem-solving: trying a simple solution first and then refining it, rather than implementing a comprehensive solution from the start.
