# New ports collection makefile for:	spellutils
# Date created:		Mar 30 jul 2002 22:42:49 CEST
# Whom:			thierry@pompo.net
#
# $FreeBSD: textproc/spellutils/Makefile 316464 2013-04-24 18:10:30Z ak $
#

PORTNAME=	spellutils
PORTVERSION=	0.7
PORTREVISION=	3
CATEGORIES=	textproc
MASTER_SITES=	http://home.worldonline.dk/byrial/spellutils/

MAINTAINER=	thierry@pompo.net
COMMENT=	Programs used to isolate some parts or texts before spell-checking


GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USES=		gettext
CONFIGURE_ENV=		LIBS='-L${LOCALBASE}/lib'
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-lintl

MAN1=		pospell.1 newsbody.1

DOCS=		NEWS README
EXAMPLES=	aspell.sl

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${MKDIR} ${EXAMPLESDIR}
.for FILE in ${DOCS}
	@${INSTALL_DATA} ${WRKSRC}/${FILE} ${DOCSDIR}
.endfor
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
.for FILE in ${EXAMPLES}
	@${INSTALL_DATA} ${FILESDIR}/${FILE} ${EXAMPLESDIR}
.endfor
	@${ECHO_MSG} "===> Examples installed in ${EXAMPLESDIR}."
.endif
	@${ECHO_MSG}
	@${CAT} ${PKGMESSAGE} | ${SED} -e "s:%%PREFIX%%:${PREFIX}:g"
	@${ECHO_MSG}

.include <bsd.port.mk>
