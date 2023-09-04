.class public Lbr/com/topaz/heartbeat/Antipharming;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbr/com/topaz/a/a;

    invoke-direct {v0, p0}, Lbr/com/topaz/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/topaz/a/a;->c()V

    return-void
.end method

.method public static verify(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lbr/com/topaz/heartbeat/Antipharming;->init(Landroid/content/Context;)V

    return-void
.end method
