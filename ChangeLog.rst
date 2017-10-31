=====================
 Changes in mel-base
=====================

0.10.0
======

Forked from ``0.9.3`` version of https://github.com/neonsquare/mel-base.

Most patches from other forks were merged into this one:

arnoo/mel-base
--------------

* Return a flexi-stream from make-imap-connection (like for
  ``make-imaps-connection``).

knusbaum/mel-base
-----------------

* Return stream from part-body-stream.

Ferada/mel-base
---------------

* Add ASDF version, description and license info.
* Unify README files.
* Use ironclad and babel.
* Remove custom base64 library.
* Remove "web.de" defaults.
* Remove unused dictionary package.

But not dstatyvka/mel-base
--------------------------

I intentionally didn't included patches from ``dstatyvka/mel-base``
because they are seems wrong and there is no good description of
their purpose.

Additional changes
------------------

* Function ``mel.mime::transmit-field-body`` was renamed to
  ``mel.mime::read-field-body``. Also, now it does field value
  unfolding. Previously, if message field was formatted like this::

    Subject: foo
     bar

  function ``mel.mime:read-rfc2822-header`` returned it like::

    ((:SUBJECT . " foo
     bar"))

  keeping starting space and newline. But RFC says that unfolding should
  be done.

  Now function will return correct result::

    ((:SUBJECT . "foo bar"))

