# New ports collection makefile for:	gkrellm-helium
# Date Created:		19 Apr 2003
# Whom:			Pav Lucistnik <pav@oook.cz>
#
# $FreeBSD: misc/gkrellm-helium/Makefile 322783 2013-07-11 16:26:26Z sunpoet $
#

PORTNAME=	gkrellm-helium
PORTVERSION=	2.3.1
PORTREVISION=	11
CATEGORIES=	misc
MASTER_SITES=	http://makovick.googlepages.com/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GKrellM plugin reading data from helium thermometer at Strahov, Prague

BUILD_DEPENDS=	${LOCALBASE}/include/gkrellm2/gkrellm.h:${PORTSDIR}/sysutils/gkrellm2
LIB_DEPENDS=	curl:${PORTSDIR}/ftp/curl
RUN_DEPENDS=	gkrellm:${PORTSDIR}/sysutils/gkrellm2

PLIST_FILES=	libexec/gkrellm2/plugins/helium.so

CFLAGS+=	-fPIC -I${LOCALBASE}/include
MAKE_ARGS=	CFLAGS="${CFLAGS}"

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/local/lib/gkrellm2/plugins|${PREFIX}/libexec/gkrellm2/plugins| ; \
		s|CFLAGS =|CFLAGS?=| ; s|-lcurl|-lcurl -L${LOCALBASE}/lib|' ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e 's|ulong|u_long|' ${WRKSRC}/*.c
	@${REINPLACE_CMD} -e '/<curl\/types.h>/d' ${WRKSRC}/http_net.c

.include <bsd.port.mk>
