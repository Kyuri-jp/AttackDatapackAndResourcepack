# Contributing
IssueやPull Requestにこれといった制限はありません。
> あくまでも常識の範囲内ですが...

**皆さんのContributingをお待ちしています。**

## Issue
Issueはバグ報告をしたり新機能を提案したりします。

バグ報告と新機能の提案のみテンプレートがあるので書き方が分からないなどの場合に是非使ってください。

### Assign
基本的に手が空いている人がアサインします。

Issueに気づいたらアサインしましょう。

## Pull Request
Pull Requestは自身が考えたコードをブランチにマージする事を許可してもらうときに使います。

### Approve
Pull Requestが承認されるには1人以上の承認が必要です。

### Merge
Pull Requestが承認され、Actionも成功した場合はマージされPull Requestはクローズされます。

また、マージ元のブランチも削除されます。

## Branch
### Name Rules
|名前|使用用途|Push|
|----|----|----|
|master|リリース済みのコードを記録します|×|
|Develop|現在開発中のコードを記録します|△|
|Release/|リリース前の調整などを行います|○|
|Doc/|ドキュメントの修正、追加などを行います|○|
|Fix/|バグ等を修正します|○|
|Feature/|広く機能の追加を行います|○|
|Other/|上記のどれにも分類されない開発などを行います|○|

### Dev Rules
- masterに直接プッシュすることは控えます
- Developに直接プッシュすることは控えます(というか無い)
- FixやFeatureなどはDevelopからブランチを切ります
- FixやFeatureなどの開発が終了次第Developにマージ(PRで)します
- Developにすべての機能等がマージし終えた後、ReleaseブランチをDevelopから切ります
- Releaseブランチで最終調整をした後masterにマージ(PRで)します
- Conflictなどを避けるためコミット後は積極的にプッシュを行います

> [!TIP]
> 大体の流れ
> 
> 1. DevelopからFix,Featureなどのブランチを切る
> 2. DevelopにPRでマージ
> 3. DevelopからReleaseを切る
> 4. masterにPRでReleaseからマージ