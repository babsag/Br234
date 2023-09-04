.class public Lbr/com/topaz/u0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lbr/com/topaz/u0/a;->a:I

    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lbr/com/topaz/u0/a;->a:I

    invoke-virtual {p0, p1, v0}, Lbr/com/topaz/u0/a;->a([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a([BI)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1

    iget v0, p0, Lbr/com/topaz/u0/a;->a:I

    invoke-virtual {p0, p1, v0}, Lbr/com/topaz/u0/a;->a(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)[B
    .locals 0

    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method
