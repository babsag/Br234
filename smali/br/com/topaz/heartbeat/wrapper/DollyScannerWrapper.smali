.class public Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/o/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper$a;
    }
.end annotation


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synchronized native function692(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;III)Lbr/com/topaz/o/k$a;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;->function692(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper$a;

    invoke-direct {p2, p0, p1}, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper$a;-><init>(Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;Ljava/lang/String;)V

    return-object p2
.end method
