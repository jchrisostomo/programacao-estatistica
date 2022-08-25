# R name convention

| Object               | Notation      | Length  | Plural   | Prefix   |  Suffix  | Abbreviation | Mask       | Example              |
|----------------------|:-------------:|--------:|:--------:|:--------:|:--------:|:------------:|:-----------|:---------------------|
| File Name            | lowercase     |    30   | No       | No       | .R       | No           | [a-z_]+\.R | predict_ad_revenue.R |
| Function Name        | PascalCase    |    30   | No       | No       | No       | No           | [A-z]+     | CalculateAvgClicks   |
| Variable Name        | camelCase     |    30   | No       | No       | No       | No           | [A-z]+     | avgClicks            |
| Data Frame           | PascalCase    |    30   | No       | df_      | No       | No           | df_[A-z]+  | df_AvgClicks         |
| Factor Variable Name | PascalCase    |    30   | No       | f        | No       | No           | f[A-z]+    | fAvgClicks           |