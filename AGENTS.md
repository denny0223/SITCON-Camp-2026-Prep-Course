# AGENTS.md

## Project purpose

This project contains a Marp slide deck for a two-hour guided prep workshop at SITCON Camp 2026. The session prepares learners for the next day's software engineering and agentic coding workshop.

The deck is not a keynote-style presentation. It is a workshop navigation aid. Learners should be able to follow the slides even when they miss part of the live screen demonstration.

## Audience

The audience is mostly high school students with mixed programming experience. Some learners may already be confident, while others may worry that they are behind. The slide deck should reduce anxiety and make progress visible.

Use Traditional Chinese for learner-facing content. Prefer Taiwan usage. Keep technical terms in English when they are standard in practice, optionally paired with a Traditional Chinese explanation on first use.

Examples:

- 版本紀錄 / version history
- 提交 / commit
- 修改差異 / diff
- 複製儲存庫 / clone
- 儲存庫 / repo
- 資料規格 / schema
- Coding Agent
- Markdown
- JSON

## Teaching strategy

The workshop should teach a minimal but complete collaboration loop:

1. Write a structured profile draft in Google Docs.
2. Enable Markdown support in Google Docs.
3. Use Google Docs version history as a bridge to Git commit concepts.
4. Sign in to GitHub from VS Code.
5. Configure Git author identity using global Git settings, because each camp computer is assigned to a learner for the duration of camp.
6. Find and clone the learner's team repo from the `SITCON-Camp-2026` GitHub organization.
7. Move the profile draft into `notes/<github>.md` instead of a shared root-level note file, so team members avoid unnecessary conflicts.
8. Use a Coding Agent to convert natural-language Markdown into structured JSON.
9. Explain JSON as a high-level data format that learners will continue to encounter in later camp activities.
10. Use schema and fixed faction codes to constrain data.
11. Preview the result locally with `pnpm run dev` so learners can see their card before treating the change as done.
12. Review the Agent's changes with diff.
13. Commit only after human review.
14. Push the commit to GitHub after syncing remote changes.
15. View the public profile card and faction statistics.

## Design principles

- One core concept per slide.
- Keep visible text short: keywords, copyable commands, and navigation steps.
- Prefer simple diagrams, contrast pairs, and checklists over paragraphs.
- Use screenshots only where they help learners find UI locations.
- Include enough navigation detail for workshop operation: what to click, what to see, and how to know the step is complete.
- Use explicit `檢核點` slides or blocks so learners and TAs can identify progress.
- Do not overload slides with polished marketing language.
- Do not turn the deck into a full written tutorial. Longer details belong in README files or task documents.

## Important conceptual choices

### Markdown

Markdown must appear explicitly. It is not merely a formatting syntax in this workshop; it is the bridge from human-readable writing to Agent-readable structure.

The deck should include one slide for enabling Google Docs Markdown support:

`Google Docs → 工具 → 偏好設定 → 自動偵測 Markdown → 確認`

### Version history, commit, and push

The link between Google Docs version history and Git commit must be strong. The intended message is:

- Google Docs version history automatically records changes.
- A Git commit is a deliberate, named, meaningful version point.
- A commit message is like a title for a version.
- A commit is still local until it is pushed.
- Push may fail if teammates have already pushed newer commits.
- Learners should sync before pushing and ask the Agent to help interpret Git state if needed.

### Coding Agent

Do not introduce the Agent abruptly. Prepare learners with the idea that the Agent is a repo-based collaborator that reads files, follows rules, modifies files, and explains changes. It is not a magic answer machine.

The Agent task in this deck is intentionally small: converting `notes/<github>.md` into `profiles/<github>.json` while following `schemas/profile.schema.json` and `data/faction-options.json`.

When Git push or sync problems happen, the Agent may help interpret the current Git state and suggest the next step. It should not be trusted to discard, overwrite, or force-push changes without explicit human review.

### Local preview

The deck must include `pnpm run dev` after the Agent-generated JSON step and before final commit/push. This is a key learner motivation point: they should see their own card locally before treating the change as done.

Use a simple Terminal command:

```bash
pnpm run dev
```

### JSON

JSON deserves a short conceptual section because learners will see it repeatedly later in camp. Keep the explanation high-level:

- JSON is a data format that programs can read.
- It has objects, keys, and values.
- It is strict about commas, quotes, field names, and casing.
- Learners do not need to hand-write perfect JSON today; they need to understand how natural-language input becomes structured data.

### Privacy and public profile data

The profile is a public card, not a personal-data form. Avoid collecting sensitive or unnecessary information. The deck should explicitly say not to include email, phone number, school class, birthday, address, or anything learners do not want public.

### Git configuration

Because each camp computer is assigned to one learner for the duration of camp, use global Git configuration:

```bash
git config --global user.name "your GitHub username or display name"
git config --global user.email "your GitHub noreply email or GitHub email"
```

Also include verification commands:

```bash
git config --global user.name
git config --global user.email
```

## Repository-specific assumptions

The real team repos are under:

`https://github.com/SITCON-Camp-2026`

Team repos are expected to follow this naming pattern:

`teamX-prep-course`

Learners should avoid cloning the shared template repo or another team's repo.

## Tone

Use calm, concrete language. The deck should help learners feel that they can continue even if they miss a step. Avoid shaming tool choices or skill levels. The "faction war" framing for OS/browser/editor preferences should remain playful and inclusive.
