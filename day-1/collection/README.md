# Day 1 — Time-estimation games

Unzip the Day 1 pack and double-click `1_time_game.html` (without feedback) or `2_time_game_with_feedback.html` (with feedback) to open it in your browser. The pages work offline; no R, Jupyter, installation or account is needed, and nothing is uploaded.

## How to play

1. Choose your group (G1–G10) and your participant ID (P01–P50), then click **Begin experiment**. Each person in a group must have a different ID. Use the same IDs in both games.
2. Do ten estimates of 5 seconds, then ten of 10 seconds, then ten of 15 seconds.
3. Keep the pointer on the large button. Click **Start**, close your eyes, and click the same button again when you think the target time has passed. You can also press Space while the button is selected. Use the same method throughout.
4. After each stop, the page confirms **Data collected**.
   - The **no-feedback** game does not show your time or how well you did.
   - The **feedback** game shows **Your performance** after every trial: a marker on a bar, blue on the left for too short, white in the centre for correct, red on the right for too long. It does not show the time in seconds.

   Take a short break between trials when you need one. Follow the lecturer's rule about silent counting.
5. After the last trial, the page downloads a CSV file, for example `G1_P01.csv`. Check your Downloads folder. If the browser blocks the download, click **Download CSV again**.
6. Move the no-feedback file to `day-1/data/no_feedback/` and the feedback file to `day-1/data/feedback/`. Both files have the same name; if your browser saved the second one as `G1_P01 (1).csv`, rename it.

Finished trials are saved in your browser while you play. Reopening the same file in the same browser normally restores them; private browsing or clearing browser data can prevent this. Finish the session and keep the CSV before closing the page. **Start a new session** clears the saved trials after asking you to confirm.

Do the no-feedback game first, and do not open its CSV until everyone has finished both games.

## CSV columns

- `group_id`: G1 to G10.
- `participant_id`: your ID within the group, such as P01.
- `group`: the same as `group_id`.
- `participant`: the combined ID, such as G1P01.
- `trial`: 1–10 within each target.
- `target_seconds`: 5, 10 or 15.
- `elapsed_seconds`: your recorded time in seconds, to three decimals.
- `elapsed_milliseconds`: the same time in milliseconds.
- `feedback_condition`: `no_feedback` or `feedback`.

The recorded time is the interval between your two clicks, so it includes your reaction time. It is not a laboratory instrument.
