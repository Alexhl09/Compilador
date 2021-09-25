
/* Simplify our definitions */

%%
    .            {
                    /* All else, return character value as token ID. */
                    print("ERROR")
                    print(text)
                    return Int(text.unicodeScalars.first?.value ?? 0)
                }

