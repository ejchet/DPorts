# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: devel/p5-IPC-Locker/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	IPC-Locker
PORTVERSION=	1.492
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Provide a server for locks and clients to access that server

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

USES=		perl5
USE_PERL5=	configure

MAN1=	lockerd.1 lockersh.1 pidstat.1 pidstatd.1 pidwatch.1 \
	uriexec.1
MAN3=	IPC::Locker.3 IPC::Locker::Server.3 \
	IPC::PidStat.3 IPC::PidStat::PidServer.3

.include <bsd.port.mk>
