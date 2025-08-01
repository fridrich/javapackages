# Copyright (c) 2013-2017 Red Hat, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the
#    distribution.
# 3. Neither the name of Red Hat nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# Authors: Mikolaj Izdebski <mizdebsk@redhat.com>

expand()
{
    local target
    if [[ -n "${2}" ]]; then
        target="${2}"
    else
        target=target/$(basename "${1}")
    fi

    sed \
        -e "s|@{bindir}|${bindir}|g" \
        -e "s|@{datadir}|${datadir}|g" \
        -e "s|@{libdir}|${libdir}|g" \
        -e "s|@{javaconfdir}|${javaconfdir}|g" \
        -e "s|@{javadir}|${javadir}|g" \
        -e "s|@{jnidir}|${jnidir}|g" \
        -e "s|@{jvmdir}|${jvmdir}|g" \
        -e "s|@{jpbindingdir}|${jpbindingdir}|g" \
        -e "s|@{m2home}|${m2home}|g" \
        -e "s|@{prefix}|${prefix}|g" \
        -e "s|@{rundir}|${rundir}|g" \
        -e "s|@{sysconfdir}|${sysconfdir}|g" \
        -e "s|@{pyinterpreter}|${pyinterpreter}|g" \
        -e "s|@{abrtlibdir}|${abrtlibdir}|g" \
        "${1}" >"${target}"
}
