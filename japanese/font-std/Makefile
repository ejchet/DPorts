# $FreeBSD: japanese/font-std/Makefile 316982 2013-05-01 02:55:55Z hrs $

PORTNAME=	std
PORTVERSION=	0.0.20130501
CATEGORIES=	japanese x11-fonts
MASTER_SITES=	# empty
PKGNAMEPREFIX=	ja-font-
DISTFILES=	# empty

MAINTAINER=	hrs@FreeBSD.org
COMMENT=	Japanese Standard Fonts

RUN_DEPENDS=	${LOCALBASE}/share/font-ipa/ipam.otf:${PORTSDIR}/japanese/font-ipa \
		${LOCALBASE}/share/font-ipa/ipag.otf:${PORTSDIR}/japanese/font-ipa \
		${LOCALBASE}/share/font-mplus-ipa/fonts/ipam.ttf:${PORTSDIR}/japanese/font-mplus-ipa \
		${LOCALBASE}/share/font-mplus-ipa/fonts/ipag.ttf:${PORTSDIR}/japanese/font-mplus-ipa

NO_BUILD=	yes
PLIST_FILES=	${STD:S,^,${FONTSDIR}/std.ja_JP/,}
PLIST_DIRS=	${FONTSDIR}/std.ja_JP
DATADIR=	${PREFIX}/share/font-${PORTNAME}
FONTSDIR=	share/fonts

STD=		Mincho Gothic \
		Ryumin-Light GothicBBB-Medium \
		Ryumin-Light.gs7 GothicBBB-Medium.gs7
STD_Mincho=	${LOCALBASE}/share/font-ipa/ipam.otf
STD_Gothic=	${LOCALBASE}/share/font-ipa/ipag.otf
STD_Ryumin-Light=	${LOCALBASE}/share/font-ipa/ipam.otf
STD_GothicBBB-Medium=	${LOCALBASE}/share/font-ipa/ipag.otf
STD_Ryumin-Light.gs7=	${LOCALBASE}/share/font-mplus-ipa/fonts/ipam.ttf
STD_GothicBBB-Medium.gs7=	${LOCALBASE}/share/font-mplus-ipa/fonts/ipag.ttf

do-fetch:
	@${DO_NADA}

do-install:
	${MKDIR} ${PREFIX}/${FONTSDIR}/std.ja_JP
.for F in ${STD}
	${LN} -s -f ${STD_${F}} ${PREFIX}/${FONTSDIR}/std.ja_JP/${F}
.endfor

.include <bsd.port.mk>
