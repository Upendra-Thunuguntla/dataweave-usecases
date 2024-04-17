%dw 2.0
output text
---
write(payload map (
    ($."Response Field") : "payload." ++ $."Source Field"
) reduce ($$ ++ $)) replace "\"payload." with "payload.\""