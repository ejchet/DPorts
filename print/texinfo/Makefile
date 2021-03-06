# Created by: Mario Sergio Fujikawa Ferreira <lioux@FreeBSD.org>
# $FreeBSD: print/texinfo/Makefile 321738 2013-06-25 12:28:55Z johans $

PORTNAME=	texinfo
PORTVERSION=	5.1.20130623
CATEGORIES=	print
MASTER_SITES=	GNU \
		ftp://ftp.stack.nl/pub/users/johans/texinfo/${PORTVERSION:E}/
DISTNAME=	${PORTNAME}-${PORTVERSION:R}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} htmlxref.cnf texinfo.tex texi2dvi
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

MAINTAINER=	johans@FreeBSD.org
COMMENT=	A typeset documentation system with multiple format output

BUILD_DEPENDS+=	help2man:${PORTSDIR}/misc/help2man

FETCH_ARGS=	-Ap
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_PERL5=	yes
USE_XZ=		yes
INSTALL_TARGET=	install install-tex
PKGDEINSTALL=	${PKGINSTALL}
MAKE_JOBS_SAFE=	yes
USES+=		charsetfix

MAKE_ARGS=	TEXMF=${PREFIX}/${TEXMF}
CPPFLAGS+=	-I${LOCALBASE}/lib
LDFLAGS+=	-L${LOCALBASE}/lib -lintl

INFO=		${PORTNAME} info-stnd info
MAN1=		info.1 infokey.1 install-info.1 makeinfo.1 texi2dvi.1 \
		texi2pdf.1 pdftexi2dvi.1 pod2texi.1 texi2any.1 texindex.1
MAN5=		info.5 texinfo.5

TEXMF=		share/texmf
PLIST_SUB=	TEXMF=${TEXMF}

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=	--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

post-patch:
	${CHMOD} 755 ${WRKSRC}/build-aux/install-sh
	${CP} ${DISTDIR}/texinfo.tex ${WRKSRC}/doc/
	${CP} ${DISTDIR}/texi2dvi ${WRKSRC}/util/

post-install:
	@${SETENV} PKG_PREFIX=${PREFIX} LOCALBASE=${LOCALBASE} ${SH} \
		${PKGINSTALL} ${PKGNAME} POST-INSTALL
	@${INSTALL_DATA} ${DISTDIR}/htmlxref.cnf ${DATADIR}/

.include <bsd.port.mk>
