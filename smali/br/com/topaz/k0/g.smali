.class public Lbr/com/topaz/k0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static a(Ljava/lang/String;)Lbr/com/topaz/k0/d;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "bse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lbr/com/topaz/o0/d;

    invoke-direct {p0}, Lbr/com/topaz/o0/d;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lbr/com/topaz/j0/a;

    invoke-direct {p0}, Lbr/com/topaz/j0/a;-><init>()V

    return-object p0
.end method
