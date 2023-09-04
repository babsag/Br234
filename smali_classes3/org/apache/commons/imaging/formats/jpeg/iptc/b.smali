.class public final synthetic Lorg/apache/commons/imaging/formats/jpeg/iptc/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic a:Lorg/apache/commons/imaging/formats/jpeg/iptc/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/b;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/b;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/b;->a:Lorg/apache/commons/imaging/formats/jpeg/iptc/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;

    invoke-static {p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->a(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;)I

    move-result p1

    return p1
.end method
