.class public Lbr/com/topaz/s/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J = 0x0L

.field private static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 5

    sget-wide v0, Lbr/com/topaz/s/b;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lbr/com/topaz/s/b;->a:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lbr/com/topaz/s/b;->b:Z

    :goto_0
    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lbr/com/topaz/s/b;->b:Z

    return v0
.end method
