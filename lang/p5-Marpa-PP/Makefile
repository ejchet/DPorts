# New ports collection makefile for:	p5-Marpa-PP
# Date created:		2011-10-25
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: lang/p5-Marpa-PP/Makefile 321187 2013-06-18 13:49:02Z az $
#

PORTNAME=	Marpa-PP
PORTVERSION=	0.014
CATEGORIES=	lang textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:JKEGL
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION}000

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Pure Perl version of Marpa

BUILD_DEPENDS=	p5-PPI>=1.206:${PORTSDIR}/textproc/p5-PPI \
		p5-Task-Weaken>=0:${PORTSDIR}/devel/p5-Task-Weaken
BUILD_DEPENDS=	p5-PPI>=1.206:${PORTSDIR}/textproc/p5-PPI \
		p5-Task-Weaken>=0:${PORTSDIR}/devel/p5-Task-Weaken

TEST_DEPENDS=	p5-Test-Weaken>=3.004000:${PORTSDIR}/devel/p5-Test-Weaken

# PERL_CONFIGURE failed on Perl 5.12.4
PERL_MODBUILD=	yes

MAN3=		Marpa::PP.3 \
		Marpa::PP::Advanced::Bibliography.3 \
		Marpa::PP::Advanced::Models.3 \
		Marpa::PP::Debug.3 \
		Marpa::PP::Grammar.3 \
		Marpa::PP::Recognizer.3 \
		Marpa::PP::Rewrite.3 \
		Marpa::PP::Semantics.3 \
		Marpa::PP::Semantics::Infinite.3 \
		Marpa::PP::Semantics::Null.3 \
		Marpa::PP::Semantics::Order.3 \
		Marpa::PP::Support.3 \
		Marpa::PP::Tracing.3 \
		Marpa::PP::Vocabulary.3

.include <bsd.port.mk>
