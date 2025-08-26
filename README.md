---
title: YYMM_COM_PRO
linkTitle: Docs
menu: {main: {weight: 20}}
---

```bash
echo -n "Op Name: "
read OP_NAME
git clone --recurse-submodules git@github.com:defektive/docsy-ops-example.git $OP_NAME
cd $OP_NAME
```

You can choose to nuke and recreate git dirs. This is probably best.
```bash
rm -rf .git .gitmodules .hugo/.git
git init
```

Or if you want to keep the gitmodule for the theme (maybe you want to consume updates??)
```bash
git remote origin set-url REPLACEWITHYOURORIGIN 
```

All the documents contained here can be viewed in a web browser by running the following.

```bash
scripts/serve.sh
```

Be sure to modify the `project.yaml` file with relevant information.