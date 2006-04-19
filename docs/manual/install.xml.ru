<?xml version='1.0' encoding='KOI8-R' ?>
<!DOCTYPE manualpage SYSTEM "./style/manualpage.dtd">
<?xml-stylesheet type="text/xsl" href="./style/manual.ru.xsl"?>
<!-- English Revision: 333057 -->

<!--
 Copyright 2002-2006 The Apache Software Foundation or its licensors, as
 applicable.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
-->

<!--***************************************************-->
<!-- Translator: Ilia Soldatenko (soldis@tversu.ru)    -->
<!-- Reviewers:                                        -->
<!--             Ivan Shvedov (ivan@tversu.ru)         -->
<!--             Arthur Reznikov (art@altair.tversu.ru)-->
<!--***************************************************-->

<manualpage metafile="install.xml.meta">

  <title>�������������� � ���������</title>

<summary>

    <p>���� �������� �������� ������� �������������� � ��������� �������
    Apache ������ �� UNIX � UNIX-�������� ��������. ���� �� ������ ����������
    ������ ��� Windows, �� ��� ���������� ��������� �������� <a
    href="platform/windows.html">&#0171;������������� Apache ��� Microsoft Windows&#0187;</a>.
    ����������, ���������� ��������� ��������, ���������� � ���������
    <a href="platform/">&#0171;���������&#0187;</a>.</p>

    <p>����� ���������������� � ��������� ������� ��������� ���������� �� ���, ������� ����
    � Apache 1.3. Apache 1.3 ����������� ������� ����� ��������, ����������� ���������
    ������� ���������. Apache 2.0 ������ ���������� ������� <code>libtool</code> �
    <code>autoconf</code>, ��� ������ ������ ������� �� ������ ����������� ��������
    � �������� �������� ����� (Open Source projects).</p>
    
    <p>���� �� ���������� �� �������� ������ ������� � �������� ������
    ����� � ��� �� ����� (��������, �� 2.0.50 � 2.0.51), ��
    ������ ������ ������ � ������� <a href="#upgrading">�������</a>.</p>

</summary>

<seealso><a href="programs/configure.html">���������������� ������ �������� �����</a></seealso>
<seealso><a href="invoking.html">������ �������</a></seealso>
<seealso><a href="stopping.html">��������� � ����������</a></seealso>

<section id="overview"><title>������� ����� &#0171;��� ������������&#0187;</title>

    <table>
    <columnspec><column width=".13"/><column width=".80"/></columnspec>
      <tr>
        <td><a href="#download">��������</a></td>

        <td><code>$ lynx http://httpd.apache.org/download.cgi</code>
        </td>
      </tr>

      <tr>
        <td><a href="#extract">����������</a></td>

        <td><code>$ gzip -d httpd-2_0_<em>NN</em>.tar.gz<br />
         $ tar xvf httpd-2_0_<em>NN</em>.tar</code> </td>
      </tr>

      <tr>
        <td><a href="#configure">����������������</a></td>

        <td><code>$ ./configure --prefix=<em>PREFIX</em></code>
        </td>
      </tr>

      <tr>
        <td><a href="#compile">��������������</a></td>

        <td><code>$ make</code> </td>
      </tr>

      <tr>
        <td><a href="#install">���������</a></td>

        <td><code>$ make install</code> </td>
      </tr>

      <tr>
        <td><a href="#customize">���������</a></td>

        <td><code>$ vi <em>PREFIX</em>/conf/httpd.conf</code> </td>
      </tr>

      <tr>
        <td><a href="#test">������� ������</a></td>

        <td><code>$ <em>PREFIX</em>/bin/apachectl start</code>
        </td>
      </tr>
    </table>

    <p><em>NN</em> ���������� �������� �� ������� ������� ����� ������,
    � ������ <em>PREFIX</em> ���� ������� ����, ��
    �������� ������ ���� ���������� ������. ���� <em>PREFIX</em> �� ������,
    �� ��������� �� ��������� ������������ � �������
    <code>/usr/local/apache2</code>.</p>

    <p>����� �������� ��� ����� �������������� � ��������� ������� �����������
    ����, ���ޣ� ���������� ��������� ������ � �������� ��������� ����������,
    �����������, ��� ���� ����� ��������� ������ �������.</p>
</section>

<section id="requirements"><title>����������</title>

    <p>����������, ����������� ��� �������� ������ �������:</p>

    <dl>
      <dt>�������� ������������</dt>
      <dd>���������, ��� �� ����� ���� ��� ��������� 50 MB
      ���������� ����� ��� ��������� ������. ����� ���������
      Apache �������� �������������� 10 MB. ������ ������ �����������
      ����� ����� �������� � �������� �� ��������� ������������ �
      ������������� ��������������� �������, �� �������� � �����������
      Apache.</dd>

      <dt>ANSI-C ���������� � ����������� ����� ������</dt>
      <dd>���������, ��� � ����� ������� ���������� ANSI-C
      ����������. ������������� ������������ <a
      href="http://www.gnu.org/software/gcc/gcc.html">GNU C
      ���������� (GCC)</a> �� <a
      href="http://www.gnu.org/">Free Software Foundation (FSF)</a>
      (������ 2.7.2 ������ ����������). ���� � ��� ������ ����������,
      �� ��������, ������������ �� �� �������� ANSI. ��������� �����,
      ����� � ���������� ��������� <code>PATH</code> ��� ������ �������,
      ���������� �������� �������, ����������� ��� ������ (<code>make</code> � ������).</dd>

      <dt>������������� �������</dt>
      <dd>� ��������� ���������� HTTP ��������� ����������� �����.
      ������� ��� ���������� ��������, ��� ����� ���������� � �����
      ������� �������� ������������� �������. ������ ��� ���� �����
      ������������ ��������� <code>ntpdate</code> ��� <code>xntpd</code>,
      ���������� �� ������� ��������� ������������� �������
      (Network Time Protocol - NTP). ��� ��������� ����� ��������� ����������
      �� NTP � �������� ������������� �������, ���������� � ������ �������� Usenet <a
      href="news:comp.protocols.time.ntp">comp.protocols.time.ntp</a>,
      � ����� �������� <a href="http://www.ntp.org">�������� �������� NTP</a>.</dd>

      <dt><a href="http://www.perl.org/">Perl 5</a>
      [�����������]</dt>
      <dd>��� ���������� ��������� ��������������� ��������, ����� ���
      <program>apxs</program> ��� <program>dbmmanage</program>
      (������� �������� �� Perl), ��������� ������������� � ����� Perl
      (������ 5.003 ��� ���� ����������).
      ���� � �����
      ������� ����������� ��������� ��������������� � ����� Perl (�������� Perl 4 � Perl 5),
      �� ��� ���� ����� ������ <program>configure</program> ������ ������, ���������
      ��� � ������ <code>--with-perl</code> (�������� �������� ����).
      ���� ���������������� ������
      <program>configure</program> �� ���ģ� ��� � ����� �������, �� �� �ӣ �����
      ������� ������� � ���������� Apache 2.0 - � ���� ������ �� �����
      �������� ������ ������������� ���� ��������������� �������.
      </dd>
    </dl>
</section>

<section id="download"><title>��������</title>

    <p>Apache ����� ��������� �� <a
    href="http://httpd.apache.org/download.cgi">�������� �������� Apache HTTP Software
    Foundation</a>, �� ������� ����� ���������� ������ ��������� ���������� ��������.
    �������������, ���������� �� unix-�������� ��������, �������������
    �������� Apache �� �������� �����. ������� ������ (��������� ����)
    ���������� ����� � ��������� ��������� ������ ��� ���� �����.
    � ���� �� �������� �������� ������ �������� ���������� ������ �������.
    ���� �� �� �ӣ-���� ��������� �������� �����, �� �������� �����������,
    ����������� � ����� <code>INSTALL.bindist</code> �� ������������.</p>

    <p>����� �������� ������������, ���������� ���������, ��� � ��� � ����� ������,
    ������Σ���� ������ HTTP ������� Apache. ��� ����� �������
    ������������� ������ (tarball) �� ������������ PGP �������.
    ��������� �������� �������� ������� �� <a
    href="http://httpd.apache.org/download.cgi#verify">��������
	��������</a>. ����� �� ������ ���������� <a
    href="http://httpd.apache.org/dev/verification.html">���������
	������ ������������� PGP</a>.</p>

</section>

<section id="extract"><title>����������</title>

    <p>���������� ������ �������� ����� Apache
    ����������� � ��� ���������������� ���������� �
    ���������������� (untarring):</p>

<example>
$ gzip -d httpd-2_0_<em>NN</em>.tar.gz<br />
$ tar xvf httpd-2_0_<em>NN</em>.tar
</example>

    <p>����� ���������� ���� ������ ����� ������ ����� �������
    � ��������� ������ �������. �� ������ �����
    � ���� �������, ������ ��� ���Σ�� ������������� ������.</p>
</section>

<section id="configure"><title>���������������� ������ �������� �����</title>

    <p>��������� ��� ����������� � ���������������� ������ ��������
    ����� � ������������ � ��� ��������, �� ������� �� ��������������
    ������, � ������ ������������ �������. ��� �������� ��� ������
    ������� <program>configure</program>, �������������� � �������� ��������
    ������������. (������������, ����������� ������ �������� ����� �����������
    CVS, ������ ���������� � ����� ������� ������� <code>autoconf</code>
    � <code>libtool</code> � ��������� ��������� <code>buildconf</code>, ������
    ��� ��� ������ ����������� ���������. � ����������� �������� �������
    ����� ������ �� ���������.)</p>

    <p>��� ���������������� ������ �������� ����� � ��������������
    �������� ���� ����� �� ���������, ������ ��������� ������ <code>./configure</code>
    ��� ����������. ��� ��������� �������� �����, ������ <program>configure</program>
    ���������� ������� ����� ���������� � ����� ��������� ������.</p>
    
    <p>�������� ������ ����� ����� - ��� ������� ��������
    ��������� (<code>--prefix</code>), �� ���� ��� ����, �� ��������
    ������������ ����� ���������� Apache.
    �������� ����� ������ �������� ��� ���, ���� ����� �����������
    ����� �������, �������������� ���������������  <a
    href="programs/configure.html#installationdirectories">�������
	������������</a>.</p>
	
	<p>����� ������ ����� ����� ������, ����� <a
    href="programs/configure.html#optionalfeatures">�����������������</a>
	�� ������ �������� ��� ���-������ ��ԣ� ��������� � ����������
	��������������� <a href="mod/">�������</a>. �� ���������,
	Apache ������������� � <a
    href="mod/module-dict.html#Status">�������</a> ������� �������.
    ��� ��������� ������ ������������ ��� ������ �����
    <code>--enable-<var>module</var></code>, ��� <code>module</code> -
    ��� �������� ������, �� �������� ����� ������� <code>mod_</code>
    � ��� ������� ���ޣ�������� �������� �� ������� ����.
    �� ����� ������ �������������� ������ ��� <a
    href="dso.html">����������� ������������ ������� (DSO)</a> --
    ��� ����� ���� ��������� � ��������� �� ������� �� �����
    ��� ������ -- � ���� ������ ����������� �����
    <code>--enable-<var>module</var>=shared</code>. ����������
    �������� ������ ������������ ��� ������ �����
    <code>--disable-<var>module</var></code>. ����������� ������
    ����� � �������������, ��� ��� <program>configure</program>
    �� ������ ������������ ��� � ��� ������, ���� ������, �������
    �� �������, ���; �� ������ ������������� ��������������� �����.</p>
    
    <p>�������, ������ ������ ���������� ������������ �������
    <program>configure</program> �������������� ���������� �
    ������������ ������ �����������, ��������� ��� ������������ ������.
    ��� ����� ������� ���� ��� ������ ���������� ���������, ����
    ��� ������ ����� ��������� ������ ������� <program>configure</program>.
    �� ����� ��������� ����������� ����������� � ����������� �����������
    ������� <program>configure</program>.</p>

    <p>��� ���� ����� �������� ������������� � �������� �������� ���������������� Apache,
    ����������� �����ģ���� ���� �������� ������ ������� ������� <code>./configure</code>.
    ����� ������������ ��������� ��������������
    ������ ��� ����������� ���������
    � ������� <code>/sw/pkg/apache</code>, ��������� ��������� ���������� �
	����������� ���������������� ��� ���� ������� ��������� ������, � ����������
	�ݣ ��� ���������� ������ <module>mod_rewrite</module> � <module>mod_speling</module>,
    ������� ����� ����� ����� ������������ ����������� ��������� DSO.</p>

<example>
      $ CC="pgcc" CFLAGS="-O2" \<br />
       ./configure --prefix=/sw/pkg/apache \<br />
       --enable-rewrite=shared \<br />
       --enable-speling=shared
</example>

    <p>��� ����������, ������ <program>configure</program> ���������, ����������� �� � ����� �������
    �ӣ �����������, � ����� ������� Make-�����, ������� ����� ����� ������������
    ��� �������������� �������.</p>
    
    <p>��������� �������� ���� ��������� ����� �������
    <program>configure</program> ��������� � ���������� �����������
    <program>configure</program>.</p>
</section>


<section id="compile"><title>������</title>

    <p>������ �� ������ �������������� � ������� ������ Apache,
    �������� ��������� �������:</p>

<example>$ make</example>

    <p>���������� �������� - �������������� ������� � ������� �������������
    (������������� �� ���������) �������� �������������� ��� ������
    �� ����� �������, ��� Pentium III/Linux 2.2. �������� ����� ������
    ����� �������� �� ������ ����������� ����������� � �� ����������
    �������, ������� �� ������ ������������� ������ � ��������.</p>
</section>

<section id="install"><title>���������</title>

    <p>������ ������� ����� ��� ��������� ������� � �������
    <em>PREFIX</em>, ������� ��� ������ ��� ���������������� Apache
    (�������� ���� ����� <code>--prefix</code>), ��������:</p>

<example>$ make install</example>

    <p>���� ������������� Apache ������ ���������� ������ �������, ��
    ������ ���������������� ����� � ��������� ����� ��������� ��� ���������.</p>
</section>

<section id="customize"><title>���������</title>

    <p>����� �� ������ ��������� ��� HTTP ������ Apache ����������� ��������������
    <a href="configuring.html">���������������� ������</a> � ��������
    <code><em>PREFIX</em>/conf/</code>.</p>

<example>$ vi <em>PREFIX</em>/conf/httpd.conf</example>

    <p>����������� �� ������������� Apache �� ������ ����� ���� �� ����������
    ������ � ���� �� ������� <a href="./">docs/manual/</a>, ���� �� �����������
    ����� Apache <a
    href="http://httpd.apache.org/docs/&httpd.docs;/">http://httpd.apache.org/docs/&httpd.docs;/</a>,
    ��� ������������ ����� ��������� ������ ������������ � ��� ����������� ���������� ����������
    �� ���� ��������� <a href="mod/directives.html">���������������� ����������</a>.</p>
</section>

<section id="test"><title>������������</title>

    <p>������ �� ������ <a href="invoking.html">���������</a> ���� HTTP ������ Apache,
    �������� ��������� �������:</p>

<example>$ <em>PREFIX</em>/bin/apachectl start</example>

    <p>� ���� �ӣ ������ �������, �� �� ������� ��������� ���� ������ ��������
    �� ������ <code>http://localhost/</code>. ���-��������, ������� �� �������,
    ��������� � �������� <directive module="core">DocumentRoot</directive> - �� ���������,
    ��� <code><em>PREFIX</em>/htdocs/</code>. ����� <a href="stopping.html">����������</a>
    ������ ��������� ��������:</p>

<example>$ <em>PREFIX</em>/bin/apachectl stop</example>
</section>

<section id="upgrading"><title>�������</title>
	
	<p>������ ����� ��� �������� �������� ������ ���������� � ������
	� ����� <code>CHANGES</code>, ������������ � ������ ��������
	����� - ��� ������� ��� ������, ����� ������� ������� ��������
	�� ��� ������� ���-������. ��� �������� ����� ������� �������
	������� (��������, � 1.3 �� 2.0, ��� � 2.0 �� 2.2), ������ �����
	�������� ������������ ������������ � ���������������� �������� ������
	��� ������ �������, ������� ��������� ������� � ������ ���������.
	��� ������ ����� ���������� ����� �������������, ��� ���� �����
	��� ����� ��������������� ���������� � API �������.</p>
	
	<p>�������, �������������� ������ ����� ����� �������
	(��������, � 2.0.55 �� 2.0.57) ����������� �����.
	���������� ������� <code>make install</code> �� �����������
	������� ������������ ���������, ����� ����� ��� ���������������� �����.
	� ���������� � �����, ������������ ������� ������ �ӣ ���������,
	����� �������� ��������������� � ������ ������� <program>configure</program>,
	������� ������������ ������� � API ������� ��� ������
	������� ������� ������ ����� �����. � ����������� ������� ��
	������ ������������ ���������� ������ ������� �������
	<program>configure</program>, ��� �� ����� ���������������� ����
	� ���� ����������, ��� ��� ���� ������ ��������� ��������.
	(��� ����� ������ ��� ������ �������, ������� � 2.0.41; ����������
	������ ����� ������������� ���������.)</p>
	
	<p>��� �������� � ������ �������� ������ �� ������, �������
	� ������ ����� <code>config.nice</code>, ������� ������ ����������
	���� � �������� <code>build</code> �������, ����
	� ����� ������ �������� ����� �������� �������. ���� ����
	�������� � ���� ������ ����� ������ ������� �������
	<program>configure</program>, ������� �� ������������
	��� ���������������� ������ �������� �����. �����, �����
	����������� �������, ���������� ���� <code>config.nice</code>
	� ������ �������� ����� ����� ������ �������, ������� � ����
	��� ����������� ���������, � ����� ���������:</p>
	
	<example>
    $ ./config.nice<br />
    $ make<br />
    $ make install<br />
    $ <em>PREFIX</em>/bin/apachectl stop<br />
    $ <em>PREFIX</em>/bin/apachectl start<br />
    </example>
    
    <note type="warning">������ ���������� ����� ������ �������
    ������, ��� ��������� ţ � ������. ��������, �� ������
    ���������� � ��������� ����� ������ ������� ����� � �������, ���������
    ������ ������� ��������� <code>--prefix</code> � ������
    ����� ����� (��ԣ� ��������� �������� ��������� <directive
    module="mpm_common">Listen</directive>), ��� ���� �����
    �������������� ������ �� ������������� � ������� �������������,
    ������ ��� ������ ��������� �������.</note>

</section>

</manualpage>
