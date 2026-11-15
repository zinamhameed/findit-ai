# FindIt AI — פרומטים לאתר התדמית

כל הפרומטים שבונים את אתר התדמית של FindIt AI. אפשר להשתמש בהם ב-Claude, ב-Claude Code, ב-Google Stitch או בכל כלי עיצוב מבוסס AI.
הפרומטים כתובים באנגלית, כי כך כלי העיצוב עובדים הכי טוב. הטקסטים שמופיעים באתר נשארים בעברית.

צילומי מסך מצורפים: `findit-site-desktop.png` (1440px) ו-`findit-site-mobile.png` (390px).

---

## 0. בסיס משותף (הדביקו לפני כל פרומט)

```
Product: FindIt AI — a smart lost-and-found service for university campuses with AI matching.
Language: Hebrew, right-to-left (dir="rtl", lang="he"). Font: Rubik.
Colors: primary #00288e, primary-container #1e40af, secondary (teal) #006a61,
teal light #86f2e4 / #89f5e7, amber chip #ffdcc3 (text #6e3900), page #f7f9fb,
cards #ffffff with 1px #e2e8f0 border, text #191c1e, muted text #444653.
Shapes: cards 16px radius, buttons 8–12px, chips fully rounded.
Rules: no emoji, no gradient washes, inline stroke icons, touch targets ≥44px,
text contrast ≥4.5:1, neutral/plural Hebrew address ("תארו", "בחרו").
Never invent statistics. Never show names or contact details in sample items.
AI matches are always "התאמה אפשרית" with a confidence %, the final decision is human.
```

---

## 1. פרומט ראשי: כל האתר בבת אחת

```
Using the shared base above, build a responsive marketing landing page for FindIt AI
(desktop 1440, fluid down to 390 mobile). Sections in order:
header · hero with an interactive report card · how it works · features · privacy ·
for institutions · FAQ · final CTA · footer.
Light, clean, trustworthy campus look: off-white page, white cards, a navy privacy
band, and a teal CTA band. Use the exact Hebrew copy given in the section prompts.
Placeholders stay as written: [פרטי התמחור שלכם], [רשימת המוסדות שלכם], [האימייל שלכם].
```

---

## 2. Header

```
Sticky-looking header, max width 1200, bottom hairline border.
Right: logo — navy rounded square with a magnifier-check icon + "FindIt AI".
Center nav: איך זה עובד · יכולות · פרטיות · למוסדות · שאלות נפוצות (anchor links).
Left: primary button "התחילו עכשיו". Wraps on mobile.
```

## 3. Hero

```
Two columns (stack on mobile).
Text column:
- teal pill badge with a graduation-cap icon: "מערכת אבדות ומציאות חכמה לקמפוס"
- H1 (56px, 800, navy): "איבדתם משהו בקמפוס? אנחנו נחבר אתכם אליו."
- paragraph: "FindIt AI מחברת בין מי שאיבד למי שמצא. מתארים את החפץ במשפט אחד, מצלמים אם אפשר, והמערכת מחפשת התאמות לפי תמונה, מיקום וזמן, ומלווה עד מסירה מאובטחת."
- two buttons: "איבדתי חפץ" (blue, magnifier icon), "מצאתי חפץ" (teal, heart icon)
  — both open the report card with that choice.
- three checkmark items: חינם לסטודנטים · פרטי קשר לא נחשפים · מסירה דרך ביטחון הקמפוס
Other column: the report card (next prompt).
```

## 4. כרטיס הדיווח האינטראקטיבי ("מצאת או איבדת?")

```
White card, 440px wide, 24px radius, soft shadow. Three states:

Step 1 of 2 — label "שלב 1 מתוך 2", title "מצאת או איבדת?", hint "בחרו מה קרה, ונמשיך משם."
Two large option buttons (full width, 88px tall, icon circle + title + subtitle):
- "איבדתי חפץ" / "נחפש עבורכם התאמות בקמפוס" (blue icon)
- "מצאתי חפץ" / "עזרו להחזיר אותו לבעלים" (teal icon)

Step 2 of 2 — a "חזרה" link, a chip showing the choice, title "מה איבדתם?" / "מה מצאתם?".
- Textarea "תיאור החפץ" (required) with a placeholder matching the choice, and the hint
  "כתבו מה זה, צבע, מותג, איפה ומתי. אל תציינו סימני זיהוי סודיים."
- Photo upload "תמונה מתארת (לא חובה)": a dashed drop zone "צלמו או בחרו תמונה · JPG או PNG";
  after selecting, show a thumbnail preview, the file name and a "הסרה" button.
- An inline error if the description is empty: "כתבו תיאור קצר של החפץ כדי להמשיך."
- Submit: "פרסום דיווח וחיפוש התאמות" (lost) / "פרסום דיווח מציאה" (found).

Step 3 — green check, "הדיווח התקבל", a message matching the choice, a summary row
(photo + choice + description), and the button "דיווח נוסף".
Demo only: nothing is sent to a server.
```

## 5. איך זה עובד

```
White band. Eyebrow "איך זה עובד", H2 "משלושה צעדים, החפץ חוזר הביתה".
Three numbered cards (1 navy, 2 teal, 3 blue):
1 "מדווחים במשפט אחד" — "כותבים או אומרים בקול מה קרה, למשל "איבדתי ארנק שחור ליד הספרייה", וה-AI ממלא את טופס הדיווח: קטגוריה, צבע, מיקום ושעה."
2 "ה-AI מחפש התאמות" — "מנוע ההתאמות משווה כל דיווח לדיווחי המציאה בקמפוס לפי תמונה, קטגוריה, צבע, מיקום ומועד, ומציג התאמות אפשריות עם רמת ביטחון."
3 "מאמתים ואוספים בבטחה" — "מוסרים סימן זיהוי שלא מופיע בדיווח הציבורי, הוא נבדק על ידי גורם מוסמך, ומתאמים איסוף בנקודת האבידות של הקמפוס."
```

## 6. יכולות

```
Eyebrow "יכולות", H2 "כל מה שצריך כדי למצוא, בלי הלחץ". A grid of six cards
(icon tile + title + one sentence):
התאמות חכמות · דיווח קולי וטקסטואלי · זיהוי תמונה · התראות בזמן אמת ·
מעקב אחרי הדיווחים · מותאם למפת הקמפוס.
Alternate the icon tiles between light blue, teal and amber.
```

## 7. פרטיות ואבטחה

```
Navy rounded band (#00288e), white text.
Eyebrow "פרטיות ואבטחה", H2 "החפץ חוזר רק לבעלים האמיתיים",
paragraph about hidden contact details and verification by secret marks in front of an
authorized campus official.
Four translucent rows with teal icons:
פרטי קשר מוסתרים תמיד · סימני זיהוי נשמרים מוצפנים ונחשפים רק למאמת ·
מסירה בנקודת האבידות הרשמית, עם תעודת סטודנט · ה-AI מציע התאמה אפשרית בלבד; ההחלטה הסופית אנושית
```

## 8. למוסדות אקדמיים

```
Eyebrow "למוסדות אקדמיים", H2 "פחות פניות למוקד, יותר חפצים שחוזרים",
short paragraph, outline button "תיאום הדגמה למוסד".
Four gray cards: לוח בקרה לצוות הביטחון · התאמה למבנה הקמפוס · מדיניות שמירה · הודעות מערכת.
```

## 9. שאלות נפוצות

```
Centered H2 "שאלות נפוצות"; a native accordion (<details>) of five white cards:
כמה זה עולה? → "השימוש לסטודנטים ולסגל חינמי. למוסדות: [פרטי התמחור שלכם]."
מה קורה אחרי שה-AI מוצא התאמה? · מישהו יכול לראות את הטלפון או המייל שלי? ·
מצאתי חפץ. מה עושים איתו? · באילו קמפוסים FindIt AI פועלת? → "[רשימת המוסדות שלכם]"
```

## 10. CTA ופוטר

```
CTA: light-teal rounded band, H2 "מוכנים להחזיר דברים למקום?",
"מצטרפים עם חשבון הסטודנט ומדווחים תוך פחות מדקה.",
buttons "פתיחת האפליקציה" (navy) and "למוסדות" (white).
Footer: dark #191c1e. "FindIt AI" + "מערכת אבדות ומציאות חכמה לקמפוסים.",
links איך זה עובד · פרטיות · שאלות נפוצות, "יצירת קשר: [האימייל שלכם]", "© 2026 FindIt AI".
```

---

## 11. פרומטים לגרסאות נוספות

**גרסה חלופית נועזת (Stitch):**
```
Same content and copy as above, but a bolder editorial campus style: dark navy hero
with oversized type, asymmetric layout, big section numbers, teal #86f2e4 as the single
accent, amber only for "possible match" chips. Keep RTL, Rubik, and all rules.
```

**מובייל בלבד:**
```
Design the same landing page as a 390px mobile screen: the hamburger menu collapses
the nav, the report card comes right under the headline, one-column cards,
and a sticky bottom button "דיווח חדש".
```

**מצב כהה:**
```
Create a dark-mode variant: page #0f1218, cards #1a1f2b, text #eff1f3, muted #c4c5d5,
primary buttons #b8c4ff with #001453 text, teal accents #6bd8cb. Keep contrast ≥4.5:1.
```

## 12. פרומט לצילום מסך

```
Render the landing page at 1440px wide and take a full-page screenshot, showing the hero
in step 1 ("מצאת או איבדת?"). Then take another at 390px wide (mobile).
```
