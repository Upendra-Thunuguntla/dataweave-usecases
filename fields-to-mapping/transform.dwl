%dw 2.0
output text
---
write(payload map (
    ($."TargetField") : "payload." ++ $."SourceField"
) reduce ($$ ++ $)) replace "\"payload." with "payload.\""