# Created by: Sheldon Hearn <sheldonh@FreeBSD.org>
# $FreeBSD: databases/p5-DBD-Sybase/Makefile 324107 2013-08-01 13:49:39Z jadawin $

PORTNAME=	DBD-Sybase
PORTVERSION=	1.15
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Sybase DBI driver for Perl 5

BUILD_DEPENDS=	p5-DBI>=0:${PORTSDIR}/databases/p5-DBI
LIB_DEPENDS=	ct.4:${PORTSDIR}/databases/freetds
RUN_DEPENDS=	p5-DBI>=0:${PORTSDIR}/databases/p5-DBI

CONFIGURE_ENV=	SYBASE=${LOCALBASE}
USES=		gettext perl5
USE_PERL5=	configure

.if defined(BATCH)
CONFIGURE_ARGS=	< /dev/null
.endif

MAN3=		DBD::Sybase.3

.include <bsd.port.mk>
