.class public interface abstract Lcom/ca/mas/core/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# static fields
.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract delete(Ljava/lang/String;)Z
.end method

.method public abstract get(Ljava/lang/String;)[B
.end method

.method public abstract getLastError()I
.end method

.method public abstract isUnlocked()Z
.end method

.method public abstract put(Ljava/lang/String;[B)Z
.end method

.method public abstract saw(Ljava/lang/String;)[Ljava/lang/String;
.end method
