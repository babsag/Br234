.class public abstract Lbr/com/topaz/a/b$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/a/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "br.com.topaz.heartbeat.IHeartbeatService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lbr/com/topaz/a/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "br.com.topaz.heartbeat.IHeartbeatService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lbr/com/topaz/a/b;

    if-eqz v1, :cond_1

    check-cast v0, Lbr/com/topaz/a/b;

    return-object v0

    :cond_1
    new-instance v0, Lbr/com/topaz/a/b$a$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/a/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static b()Lbr/com/topaz/a/b;
    .locals 1

    sget-object v0, Lbr/com/topaz/a/b$a$a;->b:Lbr/com/topaz/a/b;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "br.com.topaz.heartbeat.IHeartbeatService"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lbr/com/topaz/a/b;->a()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
