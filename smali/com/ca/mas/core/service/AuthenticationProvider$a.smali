.class final Lcom/ca/mas/core/service/AuthenticationProvider$a;
.super Ljava/lang/Object;
.source "AuthenticationProvider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/service/AuthenticationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ca/mas/core/service/AuthenticationProvider;",
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
.method public a(Landroid/os/Parcel;)Lcom/ca/mas/core/service/AuthenticationProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/service/AuthenticationProvider;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/service/AuthenticationProvider;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/ca/mas/core/service/AuthenticationProvider;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/ca/mas/core/service/AuthenticationProvider;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/service/AuthenticationProvider$a;->a(Landroid/os/Parcel;)Lcom/ca/mas/core/service/AuthenticationProvider;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/service/AuthenticationProvider$a;->b(I)[Lcom/ca/mas/core/service/AuthenticationProvider;

    move-result-object p1

    return-object p1
.end method
