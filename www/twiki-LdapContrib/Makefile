# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: www/twiki-LdapContrib/Makefile 316241 2013-04-22 15:37:34Z bdrewery $

PORTNAME=	LdapContrib
SVNREV=		16840
PORTREVISION=	1
MASTER_SITES=	http://protey.ru/freebsd/distfiles/ \
		${MASTER_SITE_LOCAL:S!$!skv/!}

COMMENT=	LDAP services for TWiki

RUN_DEPENDS=	p5-perl-ldap>=0:${PORTSDIR}/net/p5-perl-ldap

.include "${.CURDIR}/../twiki/bsd.twiki.mk"
.include <bsd.port.mk>
