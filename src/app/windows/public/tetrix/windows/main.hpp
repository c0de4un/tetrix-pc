/**
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
**/

#ifndef APP_MAIN_HPP
#define APP_MAIN_HPP

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// INCLUDES
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

// Include tetrix::core::TetrixGame
#ifndef TETRIX_CORE_GAME_HPP
    #include <tetrix/core/game/TetrixGame.hpp>
#endif /// !TETRIX_CORE_GAME_HPP

// Include STL iostream
#include <iostream>

#ifdef HEX_LOGGING // DEBUG

// Include hex::core::cfg::debug
#ifndef HEX_CORE_CFG_DEBUG_HPP
    #include <hex/core/cfg/hex_debug.hpp>
#endif /// !HEX_CORE_CFG_DEBUG_HPP

// Include hex::core::Log
#ifndef HEX_CORE_LOG_HPP
#include <hex/core/metrics/Log.hpp>
#endif /// !HEX_CORE_LOG_HPP

#endif // DEBUG

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// ALIASES
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

static constexpr const int APP_OK = 0;

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

#endif /// !APP_MAIN_HPP
