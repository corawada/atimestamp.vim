*atimestamp.txt*	日本語ヘルプ

Author  : corawada
License : MIT license  {{{
    Permission is hereby granted, free of charge, to any person obtaining
    a copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:
    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
}}}

==============================================================================
目次						*atimestamp-contents*

概要				|atimestamp-introduction|
使い方				|atimestamp-usage|
インターフェイス		|atimestamp-interface|
  コマンド			  |atimestamp-commands|
  関数				  |atimestamp-functions|
TODO				|atimestamp-todo|
更新履歴			|atimestamp-changelog|


==============================================================================
概要						*atimestamp-introduction*

*atimestamp* はバッファ内で時間を記録したい際に自動で
タイムスタンプを追記するためのVimプラグインです。
競技プログラミングの解答作成の際に解答までの時間を計測するために開発されました。

最新版:
https://github.com/user/atimestamp.vim


==============================================================================
使い方						*atimestamp-usage*

*タイムスタンプをファイル末尾に追記する（初回）~
対象のバッファで|:Pushts [{comment}]|を実行する

*タイムスタンプをファイル末尾に追記する（2回目以降）~
対象のバッファで|:Pushts [{comment}]|を実行する

==============================================================================
インターフェイス				*atimestamp-interface*

------------------------------------------------------------------------------
コマンド					*atimestamp-commands*

:Pushts {comment}					*:Pushts*
	現在のバッファにタイムスタンプがない場合、
	========================================	
	" timestamp
	" Data     Time     Diff     msg
	" 22/07/18 20:40:28 00:00:00 {comment}
	========================================	
	をバッファの末尾に追記する
	既にタイムスタンプがなされている場合
	========================================	
	" 22/07/18 20:41:59 {diff}   {comment}
	========================================	
	をバッファの末尾に追記する

------------------------------------------------------------------------------
関数						*atimestamp-functions*

atimestamp#timestamp({msg})			*atimestamp#timestamp()*
	|:Pushts {comment}| の実装


==============================================================================
TODO						*atimestamp-todo*

- Allows you to freely change the format of the time stamp

- {comment} にスペースを入れれるようにする


==============================================================================
vim:tw=78:ts=8:ft=help:norl:noet:fen:
