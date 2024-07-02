+++
author = "Martin Mikkelsen"

prepath = ""

ignore = ["node_modules/", "franklin", "franklin.pub"]

generate_rss = true
website_title = "Martin Mikkelsen"
website_descr = "Personal page"
website_url   = "https://martinmikkelsen.github.io"
rss_full_content = true
+++

\newcommand{\R}{\mathbb R}
\newcommand{\scal}[1]{\langle #1 \rangle}
\newcommand{\figenv}[3]{
~~~
<figure style="text-align:center;">
<img src="!#2" style="padding:0;#3" alt="#1"/>
<figcaption>#1</figcaption>
</figure>
~~~
}