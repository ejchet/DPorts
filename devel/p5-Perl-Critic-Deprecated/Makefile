# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: devel/p5-Perl-Critic-Deprecated/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Perl-Critic-Deprecated
PORTVERSION=	1.108
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Policies that were formally included with Perl::Critic itself, but which have been superseded by others

BUILD_DEPENDS=	p5-Perl-Critic>=0:${PORTSDIR}/textproc/p5-Perl-Critic
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Perl::Critic::Deprecated.3 \
	Perl::Critic::Policy::NamingConventions::ProhibitMixedCaseSubs.3 \
	Perl::Critic::Policy::NamingConventions::ProhibitMixedCaseVars.3 \
	Perl::Critic::Utils::PPIRegexp.3

.include <bsd.port.mk>
