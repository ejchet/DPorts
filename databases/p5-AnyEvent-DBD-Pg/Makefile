# New ports collection makefile for:	AnyEvent::DBD::Pg
# Date created:		02 Dec 2010
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/databases/p5-AnyEvent-DBD-Pg/Makefile,v 1.3 2012/11/17 05:55:13 svnexp Exp $
#

PORTNAME=	AnyEvent-DBD-Pg
PORTVERSION=	0.03
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for AnyEvent interface to DBD::Pg async interface

BUILD_DEPENDS=	p5-AnyEvent>=5:${PORTSDIR}/devel/p5-AnyEvent \
		p5-DBD-Pg>0:${PORTSDIR}/databases/p5-DBD-Pg \
		p5-DBI>0:${PORTSDIR}/databases/p5-DBI \
		p5-common-sense>=3:${PORTSDIR}/devel/p5-common-sense
RUN_DEPENDS=	p5-AnyEvent>=5:${PORTSDIR}/devel/p5-AnyEvent \
		p5-DBD-Pg>0:${PORTSDIR}/databases/p5-DBD-Pg \
		p5-DBI>0:${PORTSDIR}/databases/p5-DBI \
		p5-common-sense>=3:${PORTSDIR}/devel/p5-common-sense
TEST_DEPENDS=	p5-lib-abs>=0.90:${PORTSDIR}/devel/p5-lib-abs

PERL_CONFIGURE=	yes

MAN3=	AnyEvent::DBD::Pg.3

.include <bsd.port.mk>
