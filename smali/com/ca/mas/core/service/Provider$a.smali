.class final Lcom/ca/mas/core/service/Provider$a;
.super Ljava/lang/Object;
.source "Provider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/service/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ca/mas/core/service/Provider;",
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
.method public a(Landroid/os/Parcel;)Lcom/ca/mas/core/service/Provider;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/service/Provider;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/service/Provider;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/ca/mas/core/service/Provider;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/ca/mas/core/service/Provider;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/service/Provider$a;->a(Landroid/os/Parcel;)Lcom/ca/mas/core/service/Provider;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/service/Provider$a;->b(I)[Lcom/ca/mas/core/service/Provider;

    move-result-object p1

    return-object p1
.end method
