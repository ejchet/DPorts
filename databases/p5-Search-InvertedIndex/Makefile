# Created by: clsung@dragon2.net
# $FreeBSD: databases/p5-Search-InvertedIndex/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Search-InvertedIndex
PORTVERSION=	1.14
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Manager for inverted index maps

BUILD_DEPENDS=	p5-Class-NamedParms>=0:${PORTSDIR}/devel/p5-Class-NamedParms \
		p5-Class-ParmList>=0:${PORTSDIR}/devel/p5-Class-ParmList \
		p5-Tie-DB_File-SplitHash>=0:${PORTSDIR}/devel/p5-Tie-DB_File-SplitHash \
		p5-Tie-FileLRUCache>=0:${PORTSDIR}/devel/p5-Tie-FileLRUCache
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Search::InvertedIndex.3 \
		Search::InvertedIndex::AutoLoader.3 \
		Search::InvertedIndex::DB::DB_File_SplitHash.3 \
		Search::InvertedIndex::DB::Mysql.3 \
		Search::InvertedIndex::Query.3 \
		Search::InvertedIndex::Update.3 \
		Search::InvertedIndex::Query::Leaf.3 \
		Search::InvertedIndex::Result.3

.include <bsd.port.mk>
