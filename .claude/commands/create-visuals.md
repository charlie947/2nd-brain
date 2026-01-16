---
name: create-visuals
description: Batch-create all visual assets for the week's LinkedIn content
---

# Visual Content Generator

Batch-create all visual assets for your week's LinkedIn posts.

## Your Request

$ARGUMENTS

---

## Step 0: Check Content Calendar

**Looking for active content week...**

```
Check content-calendar/ for current week folder (week-YYYY-MM-DD)
Read status.md to verify:
- LinkedIn Approved: ✅ (required before visuals)
- Get linkedin-posts.md path
```

**If LinkedIn not approved:**
```
"LinkedIn posts for this week aren't approved yet.

Current status: [LinkedIn status]

Please run /linkedin first, review the posts, and say 'approved' before creating visuals."
```

**If ready:**
Continue to visual generation.

---

## Step 1: Load Brand Guidelines

**Reading brand specifications...**

```
Read memory/style-voice/visual-brand.md
```

**Key specs for generation:**

| Element | Specification |
|---------|--------------|
| Colors | Black: #0B0B19, Violet: #AE7AE5, Coral: #FFCBB9, Bone: #EAE7DF |
| Headlines | Mona Sans Wide, Bold/ExtraBold, UPPERCASE |
| Body | Mona Sans Regular |
| Accent | Rock Salt (sparingly) |
| Dimensions | 1080 x 1350 px (4:5 ratio) |
| Min padding | 100px from edges |

---

## Step 2: Analyze LinkedIn Posts

**Reading linkedin-posts.md...**

```
Read content-calendar/week-YYYY-MM-DD/linkedin-posts.md
```

For each of the 5 posts, extract:
- Post type (Core Insight, Story, Framework, Discussion, Teaser)
- Hook type (Bold Claim, Analogy, Contrarian, Direct Address, Problem-Agitate)
- Key quote or punch line for visual
- Whether it needs carousel (Mon/Fri) or static (Tue/Wed/Thu)

---

## Step 3: Determine Visual Types

Based on the 5-post weekly structure:

| Day | Post Type | Visual Type | Output |
|-----|-----------|-------------|--------|
| Monday | Core Insight | Carousel | 5 slides + PDF |
| Tuesday | Story | **Reel OR Static** | Reel script OR static image |
| Wednesday | Framework | **REEL (mandatory)** | Reel script (always) |
| Thursday | Discussion | Static (quote card) | 1 image |
| Friday | Teaser | Carousel | 5 slides + PDF |

**Total assets**: 10-12 images + 2 PDFs + 1-2 reel scripts

---

## Step 3a: Tuesday Format Decision

**Ask the user:**
```
Tuesday's Story post can be a REEL or a STATIC image.

From linkedin-posts.md, the "Reel Potential" indicator says: [Yes/No]

Do you want to create a reel script for Tuesday?

[Yes - I'll record a reel] → Generate reel script
[No - Static is fine] → Generate static image only
```

**If user selects reel**: Generate Tuesday reel script using template
**If user selects static**: Generate Tuesday static image as usual

---

## Step 4: Generate Visual Briefs

For each visual, create a detailed brief following patterns from `memory/patterns/content-patterns.md`:

### Monday Carousel (5 slides)

Using the "5-Slide Carousel Structure" pattern:

1. **Slide 1 (Hook)**: Bold claim from Post 1 + "Here's why →"
   - Background: Bone
   - Headline: Black, ~80pt

2. **Slide 2 (The Old Way)**: Setup the contrast
   - Background: Bone
   - Simple diagram or statement

3. **Slide 3 (The New Way)**: Your insight
   - Background: Black (flip)
   - Headline: Violet

4. **Slide 4 (Proof)**: Example or quote
   - Background: Coral
   - Warm, inviting

5. **Slide 5 (CTA)**: Framework name + follow invitation
   - Background: Black
   - Signature tagline: "Simple. Clear. Applicable."

### Tuesday: Story (Reel OR Static)

**If REEL selected:**

Generate reel script using `content-calendar/_templates/reel-script-template.md`:
- Extract story/analogy from Post 2
- Hook: The analogy opening (under 12 words)
- Story section: The narrative from the post
- Punch: The lesson or insight
- CTA: Engagement question from post

Save to: `content-calendar/week-YYYY-MM-DD/visuals/tuesday-reel-script.md`

**If STATIC selected:**

Using the "Split Static" pattern if transformation-based, or quote card:
- Background: Black or Bone
- Key visual: Before/After or Analogy visualization
- Footer: One-line insight

Save to: `content-calendar/week-YYYY-MM-DD/visuals/tuesday-static.png`

---

### Wednesday: Framework (REEL - Mandatory)

**Always generate reel script** using `content-calendar/_templates/reel-script-template.md`:

From Post 3 (Framework Share), extract:
- **Hook**: The contrarian opener (under 12 words)
- **Problem**: The "sounds reasonable but..." setup
- **Contrast**: The framework explanation or example
- **Punch**: The memorable takeaway
- **CTA**: Follow invitation

**Text Overlays**:
- Opening (0-3s): Contrarian statement in Bone on Black
- Punch (30-33s): Framework name or key insight in Violet
- End (42-45s): "Follow for more"

**Thumbnail**:
- Text: Short version of contrarian hook
- Background: Black
- Font: Violet headline

Save to: `content-calendar/week-YYYY-MM-DD/visuals/wednesday-reel-script.md`

**Also generate fallback static** (for thumbnail or if reel not recorded):
- Quote card with contrarian statement
- Save to: `wednesday-static.png`

### Thursday Static (Discussion)

Simple quote card:
- Background: Black
- Key question or insight
- Minimal design

### Friday Carousel (5 slides)

Similar structure to Monday, focused on Problem-Agitate-Solution:

1. Hook question
2. The problem
3. The deeper truth
4. The key insight
5. CTA to Substack + follow

---

## Step 5: Generate Assets

**Using Puppeteer carousel generator...**

```
# Modify scripts/generate-carousel.js with this week's content
# Run: node scripts/generate-carousel.js

# For static images, use same engine with single-slide mode
```

**Output to:**
```
content-calendar/week-YYYY-MM-DD/visuals/
├── monday-carousel/
│   ├── slide-1.png
│   ├── slide-2.png
│   ├── slide-3.png
│   ├── slide-4.png
│   ├── slide-5.png
│   └── monday-carousel.pdf
├── tuesday-static.png              # If static selected
├── tuesday-reel-script.md          # If reel selected
├── wednesday-reel-script.md        # Always (mandatory reel)
├── wednesday-static.png            # Fallback/thumbnail
├── thursday-static.png
├── friday-carousel/
│   ├── slide-1.png
│   ├── slide-2.png
│   ├── slide-3.png
│   ├── slide-4.png
│   ├── slide-5.png
│   └── friday-carousel.pdf
├── tuesday-reel.mp4                # You add after recording
└── wednesday-reel.mp4              # You add after recording
```

---

## Step 6: Update Status

After generation:

1. Update status.md:
   - "Visuals Created: ✅ complete"
   - "Week Ready: ✅ complete"

2. Update Posts table with visual paths:
   ```
   | Day | Type | Status | Visual | Posted |
   |-----|------|--------|--------|--------|
   | Mon | Core Insight | ready | monday-carousel/monday-carousel.pdf | ⬜ |
   | Tue | Story | ready | tuesday-static.png | ⬜ |
   | Wed | Framework | ready | wednesday-static.png | ⬜ |
   | Thu | Discussion | ready | thursday-static.png | ⬜ |
   | Fri | Teaser | ready | friday-carousel/friday-carousel.pdf | ⬜ |
   ```

---

## Output Summary

```
## Visuals Generated

**Week**: Dec 9-13, 2025
**Folder**: content-calendar/week-2025-12-09/visuals/

### Assets Created

| Day | Asset | Path | Status |
|-----|-------|------|--------|
| Monday | Carousel (5 slides + PDF) | monday-carousel/ | Ready |
| Tuesday | [Reel Script / Static] | tuesday-[reel-script.md / static.png] | [Script ready / Image ready] |
| Wednesday | Reel Script + Fallback Static | wednesday-reel-script.md | Script ready (record needed) |
| Thursday | Static image | thursday-static.png | Ready |
| Friday | Carousel (5 slides + PDF) | friday-carousel/ | Ready |

**Static assets**: 10-12 images, 2 PDFs
**Reel scripts**: 1-2 scripts (Wed mandatory, Tue optional)

### Reel Recording Status

| Day | Script | Recorded | Ready to Post |
|-----|--------|----------|---------------|
| Tuesday | [Yes/No] | ⬜ | ⬜ |
| Wednesday | ✅ | ⬜ | ⬜ |

### Recording Tip

Batch record Tuesday + Wednesday reels in one session:
1. Review both scripts
2. Set up once (lighting, background, camera)
3. Record both in sequence
4. Edit and add captions together

### Week Status: [READY / REELS PENDING]

[If all static + reel scripts done but reels not recorded]:
"Scripts are ready! Record your reels, save as tuesday-reel.mp4 and wednesday-reel.mp4 in the visuals folder, then you're set."

[If everything including recordings done]:
"Your content week is complete! Use `/post-today` starting Monday to get each day's post with visual."
```

---

## Technical Notes

### Carousel Generation

The script at `scripts/generate-carousel.js` handles:
- HTML rendering with brand fonts
- PNG screenshot for each slide
- PDF compilation with embedded images (base64)

**To customize for new content:**
1. Update the `slides` array with new content
2. Run `node scripts/generate-carousel.js`
3. Move outputs to correct week folder

### Static Image Generation

Same Puppeteer approach, single slide:
- Set viewport to 1080x1350
- Generate HTML with brand styling
- Screenshot to PNG

### Font Fallback

Mona Sans may not be available in Puppeteer. Use Inter as fallback (similar geometric sans-serif).

---

## Manual Override

If you prefer to create visuals manually in Canva/Figma:

1. Run `/create-visuals` to generate the briefs only
2. Use briefs as specification for manual creation
3. Save outputs to the same folder structure
4. Update status.md manually when done

---

**Generated with:** Create Visuals Command v1.0.0
