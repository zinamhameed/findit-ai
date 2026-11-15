# FindIt AI — פרומטים לאתר התדמית החלופי (נועז)

אלה כל הפרומטים שבונים את הגרסה החלופית והנועזת של אתר התדמית. אפשר להשתמש בהם ב-Claude, ב-Claude Code, ב-Google Stitch או בכל כלי עיצוב מבוסס AI.
הפרומטים כתובים באנגלית, והטקסטים שמופיעים באתר נשארים בעברית.

צילומי מסך מצורפים:
- `findit-alt-desktop.png` (1440px)
- `findit-alt-mobile.png` (390px)

---

## 0. בסיס משותף (הדביקו לפני כל פרומט)

```
Product: FindIt AI — a smart lost-and-found service for university campuses with AI matching.
Language: Hebrew, right-to-left (dir="rtl", lang="he"). Font: Rubik (weights 400–900).
Style: bold, editorial campus look — big type, high contrast, few colors.
Colors: deep navy #0b1640 (hero, CTA, dark cards), single accent teal #86f2e4
(text on teal #00201d / #005049), page #f7f9fb, white #ffffff, text #191c1e,
muted text #444653, light-navy text on dark #c8d0ff, giant section numbers in #dde1ff.
Shapes: pill buttons (fully rounded), cards with 24–28px radius, 2px navy rules as dividers.
Rules: no emoji, no gradients, no photos; inline stroke icons only; touch targets ≥44px;
text contrast ≥4.5:1; neutral/plural Hebrew ("תארו", "בחרו").
Never invent statistics. Never show names or contact details.
AI matches are always "התאמה אפשרית"; the final decision is human.
```

---

## 1. פרומט ראשי: כל האתר

```
Using the shared base, build a responsive landing page (1440 desktop, fluid to 390 mobile)
with these sections:
1. dark hero with header, a giant headline and the interactive report card
2. "01 איך זה עובד"
3. "02 מה בפנים"
4. "03" privacy statement on teal
5. "04 למוסדות"
6. "שאלות" (FAQ)
7. dark CTA with footer
Each numbered section starts with a huge pale number (120px, weight 900, #dde1ff).
Keep placeholders as written: [פרטי התמחור שלכם], [רשימת המוסדות שלכם], [האימייל שלכם].
```

---

## 2. Header (בתוך ה-Hero הכהה)

```
On navy #0b1640, max width 1240.

Right: a teal circle with a navy magnifier icon, plus "FindIt AI" (800 weight, white).

Middle nav, light-navy links: איך זה עובד · יכולות · פרטיות · למוסדות · שאלות.

Left: a teal pill button "דווחו עכשיו", which scrolls to the report card.

Wraps on mobile.
```

## 3. Hero

```
Navy background, white text, two columns that stack on mobile.

Text column:
- Eyebrow, teal: "אבדות ומציאות · קמפוס · AI"
- Giant H1 (92px, weight 900, tight line-height, three lines):
  "שום דבר / לא באמת / הולך לאיבוד." with the last line in teal #86f2e4.
- Paragraph in #c8d0ff:
  "מתארים במשפט, מצלמים אם אפשר, ו-FindIt AI מוצאת את החפץ התואם בקמפוס ומלווה עד מסירה בטוחה. בלי לחשוף פרטי קשר."
- Two pill buttons:
  - "איבדתי": white fill, navy text, magnifier icon.
  - "מצאתי": teal outline, heart icon.
  - Each opens the report card with that choice already selected.

Other column: the report card (next prompt), aligned to the bottom of the text.
```

## 4. כרטיס הדיווח ("מצאת או איבדת?")

```
White card, 440px wide, 28px radius, on the navy hero. Three states:

Step 1:
- Label "01 / 02" in teal and title "מצאת או איבדת?" (34px, weight 800).
- Two full-width option buttons, 80px tall, 18px radius, each with a chevron:
  - "איבדתי חפץ" / "נחפש עבורכם התאמות": navy fill, white text.
  - "מצאתי חפץ" / "עזרו להחזיר אותו": teal fill, dark text.

Step 2:
- Label "02 / 02 · איבדתי|מצאתי", a "חזרה" link and the title "מה איבדתם?" / "מה מצאתם?".
- Textarea "תיאור החפץ" (required), on a light gray fill, with a placeholder that matches the choice.
  Hint below it: "מה זה, צבע, מותג, איפה ומתי. בלי סימני זיהוי סודיים."
- "תמונה מתארת (לא חובה)": a dashed button "צלמו או בחרו תמונה".
  After a photo is picked, show a thumbnail, the file name and a "הסרה" button.
- If the description is empty, show the error "כתבו תיאור קצר כדי להמשיך."
- Pill submit button: "פרסום וחיפוש התאמות" or "פרסום דיווח מציאה".
  It turns gray until there is text.

Step 3:
- A teal check circle and "הדיווח התקבל.", followed by a message that matches the choice.
- A summary row with the photo and the description.
- An outline pill button "דיווח נוסף".

Demo only: nothing is sent to a server.
```

## 5. 01 · איך זה עובד

```
Two columns. Right column: a giant "01" and H2 "איך זה עובד" (44px, navy).

Left column: an ordered list of three rows, separated by 2px navy rules.
Each row has a teal Hebrew letter as its marker:
- א "מספרים במשפט": "כותבים או אומרים בקול מה קרה, וה-AI ממלא קטגוריה, צבע, מיקום ושעה."
- ב "ה-AI מחפש": "השוואה מול דיווחי המציאה בקמפוס לפי תמונה, צבע, מיקום ומועד, עם רמת ביטחון לכל התאמה אפשרית."
- ג "מאמתים ואוספים": "סימן זיהוי סודי נבדק על ידי גורם מוסמך, והאיסוף נעשה בנקודת האבידות של הקמפוס."
```

## 6. 02 · מה בפנים

```
Giant "02" + H2 "מה בפנים".

A grid of six white cells inside one 2px navy frame (24px radius).
The cells are separated by 2px navy lines: 3 columns on desktop, 1 on mobile.
Each cell has a title and one line:
- התאמות שמסבירות את עצמן
- דיווח בקול או בטקסט
- זיהוי תמונה
- התראה ברגע שיש משהו
- סטטוס ברור (אבד · התאמה אפשרית · באימות · הוחזר)
- מפת הקמפוס שלכם
```

## 7. 03 · פרטיות (הצהרה)

```
Full-width teal band (#86f2e4).

Content, top to bottom:
- A giant "03" in dark text at 18% opacity.
- Statement headline (64px, weight 900, dark #00201d):
  "החפץ חוזר רק לבעלים האמיתיים. הפרטים שלכם לא יוצאים לשום מקום."
- Four short points in a row, each topped by a 2px dark rule:
  - פרטי קשר מוסתרים תמיד.
  - סימני זיהוי מוצפנים, רק המאמת רואה.
  - מסירה בנקודת האבידות הרשמית.
  - ה-AI מציע, אדם מחליט.
```

## 8. 04 · למוסדות

```
Two columns.

Text side:
- A giant "04".
- H2: "למוסדות: מחסן האבידות עובר לדיגיטל".
- Paragraph: students report on their own; campus security verifies and hands items over;
  dashboard, campus map, retention policy and system messages.

Card side: a navy card (28px radius) containing:
- "רוצים את זה בקמפוס שלכם?"
- "נשמח להראות הדגמה ולהתאים למוסד. [פרטי התמחור שלכם]"
- A teal pill button "תיאום הדגמה".
```

## 9. שאלות

```
H2 "שאלות" (navy). A native accordion (<details>) with no cards,
only 2px navy rules between the rows. Each summary is 21px bold:
- כמה זה עולה?: "לסטודנטים ולסגל, חינם. למוסדות: [פרטי התמחור שלכם]."
- מה קורה אחרי שנמצאה התאמה אפשרית?
- מישהו רואה את הטלפון או המייל שלי?
- באילו קמפוסים זה פועל?: "[רשימת המוסדות שלכם]"
```

## 10. CTA + פוטר

```
Navy section with a giant two-line headline (80px, weight 900):
"איבדתם? / בואו נמצא." with the second line in teal.

Two pill buttons:
- "פתיחת דיווח": teal fill.
- "למוסדות": white outline.

Footer, below a thin divider line:
- "FindIt AI"
- "יצירת קשר: [האימייל שלכם]"
- "© 2026 FindIt AI"
```

---

## 11. פרומטים לווריאציות

**השוואה מול הגרסה הראשונה:**
```
Show this bold version and the original light version (white cards, blue/teal, clean corporate)
side by side as two desktop artboards, with the same copy, so stakeholders can choose.
```

**מצב בהיר לגרסה הנועזת:**
```
Keep the editorial layout, giant numbers and pill buttons, but invert: an off-white hero
(#f7f9fb) with a navy headline, teal only on the last line and the key buttons, and a navy
privacy band instead of teal.
```

**פוסט לרשתות מאותו סגנון:**
```
1080×1350 social post: navy background, the headline "שום דבר לא באמת הולך לאיבוד."
in the same giant Rubik 900 type with the last line in teal, a small "FindIt AI" logo,
and a teal pill "דווחו עכשיו". RTL, no photos, no emoji.
```

## 12. פרומט לצילום מסך

```
Render the page at 1440px wide and take a full-page screenshot with the report card
in step 1 ("מצאת או איבדת?"). Then repeat at 390px wide for mobile.
```
