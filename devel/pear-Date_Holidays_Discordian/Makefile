# $FreeBSD: devel/pear-Date_Holidays_Discordian/Makefile 319312 2013-05-28 14:07:30Z miwi $

PORTNAME=	Date_Holidays_Discordian
PORTVERSION=	0.1.1
CATEGORIES=	devel www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	Driver based class to calculate Discordian holidays

BUILD_DEPENDS=  ${PEARDIR}/Date/Holidays.php:${PORTSDIR}/devel/pear-Date_Holidays
RUN_DEPENDS=   	${PEARDIR}/Date/Holidays.php:${PORTSDIR}/devel/pear-Date_Holidays

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
