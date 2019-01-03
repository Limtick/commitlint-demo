# commitlint-demo

> [commitlint](https://github.com/marionebl/commitlint)
>
> helps your team adhering to a commit convention

所有依赖安装都在 `install.sh` 中

`package.json` 添加配置

```javascript
{
  "scripts": {
    "commit": "commit",
    "changelog": "conventional-changelog -p angular -i CHANGELOG.md -s",
    "release": "standard-version && git push --follow-tags origin master",
    "pre:release": "standard-version --prerelease"
  },
  "husky": {
    "hooks": {
      "commit-msg": "commitlint -E HUSKY_GIT_PARAMS"
    }
  }
}
```

### [angular](https://github.com/marionebl/commitlint/tree/master/%40commitlint/config-conventional#type-enum)

> 一个 git message 规范
>
> [google doc](https://docs.google.com/document/d/1QrDFcIiPjSLDn3EL15IJygNPiHORgU1_OOAqWjiDU5Y/edit#heading=h.greljkmo14y0)

**关于 `angular规范` 的更多内容可参考文末的附录**

#### message 格式

```
<type>(<scope?>)<subject> // header

<body?> // 可多行

<footer?>
```

### [prompt](https://marionebl.github.io/commitlint/#/guides-use-prompt)

> - 辅助编写 commit message, 保证 commit 符合配置的规范
>
> - 需要使用对应命令替代 git commit
>
> - scope, body 和 footer 可以使用 **:skip** 跳过，

### [husky](https://github.com/typicode/husky)

> git hooks, commitlint 用其验证 commit message

### [conventional-changelog](https://github.com/conventional-changelog/conventional-changelog/tree/master/packages/conventional-changelog)

> 根据 git 元数据自动生成 CHANGELOG

### [standard-version](https://github.com/conventional-changelog/standard-version)

> 更推荐的用来生成 CHANGELOG 的工具
>
> - 自动修改版本文件
> - 使用 `conventional-changelog` 更新 CHANGELOG.md
> - 提交版本文件与 CHANGELOG.md
> - 生成一个新 tag

## 附录

- https://www.jianshu.com/p/00c9ec4e552e

