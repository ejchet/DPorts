# New ports collection makefile for: sms2
# Date created:		04 sep 2004
# Whom:			Krzysztof Kowalewski <pyzmen@kam.pl>
#
# $FreeBSD: polish/sms2/Makefile 322783 2013-07-11 16:26:26Z sunpoet $
#

PORTNAME=	sms
PORTVERSION=	2.1.0
PORTREVISION=	6
CATEGORIES=	polish
MASTER_SITES=	http://ceti.pl/~miki/komputery/download/sms/ \
		http://radioemiter.pl/~mjd/slackware/sms2/ \
		http://pyzmen.kam.pl/sms/ \
		ftp://ftp.ma.krakow.pl/pub/sms/

MAINTAINER=	pyzmen@kam.pl
COMMENT=	Send SMS to cellular phones in Poland (Idea, ERA, Plus)

LIB_DEPENDS=	curl:${PORTSDIR}/ftp/curl \
		pcre.3:${PORTSDIR}/devel/pcre \
		gdbm.4:${PORTSDIR}/databases/gdbm \
		pcre\\+\\+.0:${PORTSDIR}/devel/pcre++

LATEST_LINK=	sms2

USE_GMAKE=	yes

.include <bsd.port.mk>
