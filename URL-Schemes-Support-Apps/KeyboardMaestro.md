# KM

[TOC]

## Editors

| Example Editor URL Command | Description |
| -------------------------- | ----------- |
| `keyboardmaestro://u=support%40stairways.com/s=ABCDEFGH0123456789` | enter your username/serial number. |
| `keyboardmaestro://m=Activate%20Application%20Switcher` `keyboardmaestro://m=D2F427A1-51E3-4719-820B-4C25B6FF7329` | edit a specific macro or macro group.You may used either the Macro Name, or UUID. |
| `keyboardmaestro://q=Activate` | filter macros with this keyword. |
| `keyboardmaestro://g=All%20Macros/q=Activate` | select a macro group and filter macros with this keyword. |
| `keyboardmaestro://a=Execute` | filter actions with this keyword. |
| `keyboardmaestro://c=All%20Actions/a=Execute` | select action category and filter actions with this keyword. |

## Triggers

You can trigger a macro (that is Active and Enabled) using the “`kmtrigger`” URL scheme. The URL uses this format:

```text
kmtrigger://macro=<Macro Name or UUID>[&<Trigger Value>]
```

where

-   `<Macro Name or UUID>` is either the Macro Name, OR, its UUID
-   `<Trigger Value>` is the *optional* Trigger Value
-   `[ ]` are *not* included. Used only to show *optional* parameters
-   `&` must precede the Trigger Value, if it is provided.

Note both Macro Name and Trigger Value must be URL encoded.

You can easily get the Trigger URL by clicking on the “Or by Script” Trigger option, and selecting “Or by URL”.



| Example Trigger URL Command                                  | Description                         |
| --------------- | ------------------------------------------ |
| `kmtrigger://macro=Your%20Macro%20Name`                      | Using the Macro Name                |
| `kmtrigger://macro=224AA8CB-07EB-4C92-8201-68FED82B6E9F`     | Using the Macro UUID                |
| `kmtrigger://macro=Your%20Macro%20Name&value=Your%20Trigger%20Value` | Using Macro Name with Trigger Value |
| `kmtrigger://macro=224AA8CB-07EB-4C92-8201-68FED82B6E9F&value=Your%20Trigger%20Value` | Using Macro UUID with Trigger Value |

