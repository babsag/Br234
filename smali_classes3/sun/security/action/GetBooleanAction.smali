.class public Lsun/security/action/GetBooleanAction;
.super Ljava/lang/Object;
.source "GetBooleanAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/security/action/GetBooleanAction;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lsun/security/action/GetBooleanAction;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsun/security/action/GetBooleanAction;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
