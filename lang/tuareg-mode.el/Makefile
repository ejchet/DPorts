# Created by: dd
# $FreeBSD: lang/tuareg-mode.el/Makefile 316003 2013-04-17 19:19:57Z bdrewery $

PORTNAME=	tuareg-mode
PORTVERSION=	2.0.6
PORTEPOCH=	1
CATEGORIES=	lang elisp
MASTER_SITES=	http://forge.ocamlcore.org/frs/download.php/882/

MAINTAINER=	michael.grunewald@laposte.net
COMMENT=	Emacs major mode for editing Caml code

USE_EMACS=	yes

WRKSRC=		${WRKDIR}/tuareg-${PORTVERSION}

DOC_FILES=	README
DOC_DIR=	share/doc/tuareg-mode
ELISP_FILES=	ocamldebug.el tuareg.el

PLIST_FILES=	${ELISP_FILES:S/^/${EMACS_SITE_LISPDIR}\//} \
		${ELISP_FILES:S/^/${EMACS_SITE_LISPDIR}\//S/$/c/} \
		${DOC_FILES:S/^/${DOC_DIR}\//}
PLIST_DIRS=	${DOC_DIR}

# Note: append-tuareg.el and custom-tuareg.el are example files,
# they are thus considered part of the documentation.

#
# Operations
#

do-build:
	cd ${WRKSRC} &&\
	${EMACS_CMD} -batch -q -f batch-byte-compile ${ELISP_FILES}

do-install:
.for tuareg_mode_f in ${ELISP_FILES}
	${INSTALL_DATA} ${WRKSRC}/${tuareg_mode_f} ${WRKSRC}/${tuareg_mode_f}c \
		${PREFIX}/${EMACS_SITE_LISPDIR}
.endfor
	${MKDIR} ${PREFIX}/${DOC_DIR}
.for tuareg_mode_f in ${DOC_FILES}
	${INSTALL_DATA} ${WRKSRC}/${tuareg_mode_f} ${PREFIX}/${DOC_DIR}
.endfor

.include <bsd.port.mk>
