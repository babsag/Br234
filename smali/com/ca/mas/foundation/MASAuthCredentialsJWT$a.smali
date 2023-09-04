.class final Lcom/ca/mas/foundation/MASAuthCredentialsJWT$a;
.super Ljava/lang/Object;
.source "MASAuthCredentialsJWT.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/foundation/MASAuthCredentialsJWT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ca/mas/foundation/MASAuthCredentialsJWT;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ca/mas/foundation/MASAuthCredentialsJWT;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;

    invoke-direct {v0, p1}, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/ca/mas/foundation/MASAuthCredentialsJWT;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/ca/mas/foundation/MASAuthCredentialsJWT;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASAuthCredentialsJWT$a;->a(Landroid/os/Parcel;)Lcom/ca/mas/foundation/MASAuthCredentialsJWT;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASAuthCredentialsJWT$a;->b(I)[Lcom/ca/mas/foundation/MASAuthCredentialsJWT;

    move-result-object p1

    return-object p1
.end method
