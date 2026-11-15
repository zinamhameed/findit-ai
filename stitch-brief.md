# Stitch brief — FindIt AI marketing site (alternative version)

Paste this into Claude Code (with the `stitch` MCP connected) or directly into Google Stitch.

---

Create an **alternative** marketing landing page for **FindIt AI**, a smart lost-and-found service for university campuses. Web, desktop width 1440, fully responsive down to mobile. **Hebrew, right-to-left (dir="rtl")**, font **Rubik**.

**Make it visibly different** from the current version, which is a light, clean, corporate page with blue and teal and white cards. Go for a bolder, more editorial campus feel:
- A dark navy hero (#00288e → deeper navy) with large typography.
- One strong accent: teal #86f2e4. Use amber #ffdcc3 only for "possible match" chips.
- Asymmetric layout and big section numbers.

Avoid emoji and gradient-wash backgrounds. Use real buttons with touch targets of at least 44px.

## Sections, in order (Hebrew copy as given)

1. **Header**
   - Logo "FindIt AI".
   - Nav: איך זה עובד · יכולות · פרטיות · למוסדות · שאלות נפוצות.
   - Button "התחילו עכשיו".

2. **Hero + report flow card**
   - Badge "מערכת אבדות ומציאות חכמה לקמפוס".
   - Headline: "איבדתם משהו בקמפוס? אנחנו נחבר אתכם אליו."
   - Subtitle: "FindIt AI מחברת בין מי שאיבד למי שמצא. מתארים את החפץ במשפט אחד, מצלמים אם אפשר, והמערכת מחפשת התאמות לפי תמונה, מיקום וזמן, ומלווה עד מסירה מאובטחת."
   - **Report card**, with three states:
     - Step 1: "מצאת או איבדת?" with two large buttons, "איבדתי חפץ" and "מצאתי חפץ".
     - Step 2: textarea "תיאור החפץ", plus the hint "כתבו מה זה, צבע, מותג, איפה ומתי. אל תציינו סימני זיהוי סודיים."
       - Optional photo upload "תמונה מתארת (לא חובה)", with a preview and a remove button.
       - Submit button "פרסום דיווח וחיפוש התאמות".
     - Step 3: confirmation "הדיווח התקבל".

3. **איך זה עובד**: three steps.
   - מדווחים במשפט אחד
   - ה-AI מחפש התאמות
   - מאמתים ואוספים בבטחה

4. **יכולות**: six features.
   - התאמות חכמות
   - דיווח קולי וטקסטואלי
   - זיהוי תמונה
   - התראות בזמן אמת
   - מעקב אחרי הדיווחים
   - מותאם למפת הקמפוס

5. **פרטיות ואבטחה**
   - Title: "החפץ חוזר רק לבעלים האמיתיים".
   - Four points:
     - פרטי קשר מוסתרים תמיד
     - סימני זיהוי מוצפנים
     - מסירה בנקודת האבידות הרשמית
     - ה-AI מציע התאמה אפשרית בלבד, ההחלטה אנושית

6. **למוסדות אקדמיים**
   - Title: "פחות פניות למוקד, יותר חפצים שחוזרים".
   - Four cards:
     - לוח בקרה לצוות הביטחון
     - התאמה למבנה הקמפוס
     - מדיניות שמירה
     - הודעות מערכת
   - Button "תיאום הדגמה למוסד".

7. **שאלות נפוצות**: accordion with five questions.
   - כמה זה עולה?
   - מה קורה אחרי שה-AI מוצא התאמה?
   - מישהו יכול לראות את הטלפון או המייל שלי?
   - מצאתי חפץ, מה עושים איתו?
   - באילו קמפוסים FindIt AI פועלת?

8. **CTA**
   - Title: "מוכנים להחזיר דברים למקום?"
   - Buttons: "פתיחת האפליקציה" and "למוסדות".

9. **Footer**
   - FindIt AI · links · "יצירת קשר: [האימייל שלכם]" · © 2026.

## Rules

- No invented statistics or numbers. Keep these placeholders as written:
  - [פרטי התמחור שלכם]
  - [רשימת המוסדות שלכם]
  - [האימייל שלכם]
- Never show a person's name or contact details in sample item cards.
- Always phrase matches as "התאמה אפשרית" with a confidence %.
- Use neutral or plural Hebrew address ("תארו", "בחרו").

---

**One-line command for Claude Code:**
"Use the stitch MCP to create a new project 'FindIt AI — אתר תדמית חלופי' and generate the landing page described in stitch-brief.md. Then show me the screen link and export the HTML."
