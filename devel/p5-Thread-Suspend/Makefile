# Created by: Ruben van Staveren
# $FreeBSD: devel/p5-Thread-Suspend/Makefile 321187 2013-06-18 13:49:02Z az $

PORTNAME=	Thread-Suspend
PORTVERSION=	1.22
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Thread
PKGNAMEPREFIX=	p5-

MAINTAINER=	pclin@FreeBSD.org
COMMENT=	Suspend and resume operations for threads

PERL_CONFIGURE=	yes

MAN3=	Thread::Suspend.3

.include <bsd.port.pre.mk>

pre-everything::
	@${ECHO_MSG} "----------------------------------------------------------"
	@${ECHO_MSG} "This module requires a threaded perl.  If your install"
	@${ECHO_MSG} "is not threaded please install lang/${PERL_PORT} with threads"
	@${ECHO_MSG} "----------------------------------------------------------"

.include <bsd.port.post.mk>
